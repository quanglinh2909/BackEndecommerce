/* eslint-disable prettier/prettier */
import { CartEntity } from '@/entities/cart.entity';
import { OrderEntity } from '@/entities/oder.entity';
import { OrderDetailEntity } from '@/entities/order-detail.entity';
import { ProductEntity } from '@/entities/product.entity';
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
        private cartRespository: Repository<CartEntity>
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
        return orderResult;

    }
}
