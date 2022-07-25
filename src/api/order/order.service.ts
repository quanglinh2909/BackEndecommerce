/* eslint-disable prettier/prettier */
import { CartEntity } from '@/entities/cart.entity';
import { NotyficationEntity } from '@/entities/notifycation.entity';
import { OrderEntity } from '@/entities/oder.entity';
import { OrderDetailEntity } from '@/entities/order-detail.entity';
import { ProductEntity } from '@/entities/product.entity';
import { UserEntity } from '@/entities/user.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { v4 as uuid } from 'uuid';

@Injectable()
export class OrderService {
    constructor(
        @InjectRepository(OrderEntity)
        private orderRepository: Repository<OrderEntity>,
        @InjectRepository(OrderDetailEntity)
        private orderDetailRepository: Repository<OrderDetailEntity>,
        @InjectRepository(ProductEntity)
        private productRespository: Repository<ProductEntity>,
        @InjectRepository(CartEntity)
        private cartRespository: Repository<CartEntity>,
        @InjectRepository(NotyficationEntity)
        private notifycationRespository: Repository<NotyficationEntity>,
        @InjectRepository(UserEntity)
        private usertionRespository: Repository<UserEntity>
    ) { }
    async getAll(): Promise<OrderEntity[]> {
        return await this.orderRepository.find({});
    }
    async insert(order: any) {
        //uuid
        const id = uuid();
        const arrOrderDetail = order.oderList;
        const result = await this.orderRepository.create(
            {
                id: id,
                idUser: order.idUser,
                idAddress: order.idAddress,
                total: order.total,
                status: 0,
            });
        const orderResult = await this.orderRepository.save(result);
        for (const item of arrOrderDetail) {
            const product = await this.productRespository.findOne(item.product_entity_id);
            if (item.cart_entity_size == "M") {
                product.M = product.M - item.cart_entity_quantity;
            }
            if (item.cart_entity_size == "L") {
                product.L = product.L - item.cart_entity_quantity;
            }
            if (item.cart_entity_size == "XL") {
                product.XL = product.XL - item.cart_entity_quantity;
            }
            if (item.cart_entity_size == "S") {
                product.S = product.S - item.cart_entity_quantity;
            }
            await this.productRespository.save(product);
            const orderDetail = await this.orderDetailRepository.create({
                idOrder: id,
                idProduct: item.cart_entity_idProductId,
                price: item.product_entity_price,
                quantity: item.cart_entity_quantity,
                size: item.cart_entity_size,
            });
            await this.orderDetailRepository.save(orderDetail);
            const cart = await this.cartRespository.findOne({ where: { id: item.cart_entity_id } });
            await this.cartRespository.remove(cart);
        }
        const user = await this.usertionRespository.findOne({ where: { role: 1 } });
        const noty = await this.notifycationRespository.create({
            idUser: user,
            idOrder: id,
            title: "Đơn hàng mới",
            mess: "Bạn có đơn hàng mới từ " + order.nameUser,
            type: 0,
            status: 0,
        });
        await this.notifycationRespository.save(noty);

        const user2 = await this.usertionRespository.findOne({ where: { id: order.idUser } });
        const noty2 = await this.notifycationRespository.create({
            idUser: user2,
            idOrder: id,
            title: "Đơn hàng mới",
            mess: "Đơn hàng của bạn đã đặt thành công",
            type: 0,
            status: 0,
        });
        await this.notifycationRespository.save(noty2);

        return orderResult;

    }
    //get tota page
    async getTotalPage(status: number) {
        return await this.orderRepository.createQueryBuilder('order_entity')
            .where('order_entity.status = :status', { status })
            .getCount();
    }
    getTitle(status: number) {
        switch (status) {
            case 0:
                return "Đơn hàng mới";
            case 1:
                return "Đang giao hàng";
            case 2:
                return "Đã giao hàng";
            case 3:
                return "Hủy đơn hàng";
            default:
                return "";
        }
    }
    getMessage(status: number) {
        switch (status) {
            case 1:
                return "Đơn hàng của bạn đang được giao";
            case 2:
                return "Đơn hàng của bạn đã được giao";
            case 3:
                return "Đơn hàng của bạn đã bị hủy";
            default:
                return "";
        }
    }
    //upadte status
    async updateStatus(id: any, status: number, role: number) {
        const order = await this.orderRepository.findOne({ where: { id }, relations: ['idUser'] });
        let title = "";
        let message = "";
        if (status == 0) {
            title = "Đơn hàng mới";
        }
        if (status == 1) {
            title = "Đang giao hàng";
            message = "Đơn hàng của bạn đang được giao";

        }
        if (status == 2) {
            title = "Đã giao hàng";
            message = "Đơn hàng của bạn đã được giao";
        }
        if (status == 3) {
            title = "Hủy đơn hàng";
            message = "Đơn hàng của bạn đã bị hủy";
        }
        order.status = status;
        if (role == 1) {
            const noty = await this.notifycationRespository.create({
                idUser: order.idUser,
                idOrder: id,
                title: title,
                mess: message,
                type: status,
                status: 0,
            });
            await this.notifycationRespository.save(noty);
        }
        if (role == 0) {
            const user = await this.usertionRespository.findOne({ where: { id: order.idUser.id } });
            const noty = await this.notifycationRespository.create({
                idUser: order.idUser,
                idOrder: id,
                title: title,
                mess: user.userName + " đã hủy đơn hàng",
                type: status,
                status: 0,
            });
            await this.notifycationRespository.save(noty);
        }
        return await this.orderRepository.save(order);
    }
}
