/* eslint-disable prettier/prettier */
import { OrderDetailEntity } from '@/entities/order-detail.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class OderDetailService {
    constructor(
        @InjectRepository(OrderDetailEntity)
        private orderDetailRepository: Repository<OrderDetailEntity>
    ) { }
    async getAll(): Promise<OrderDetailEntity[]> {
        return await this.orderDetailRepository.find({});
    }
    async getOrderByStatus(status: number, offset: number, limit: number, idUser: number) {
        if (idUser == -1) {
            return await this.orderDetailRepository.createQueryBuilder('order_detail_entity')
                .leftJoinAndSelect('order_detail_entity.idOrder', 'order_entity')
                .leftJoinAndSelect('order_entity.idUser', 'user_entity')
                .leftJoinAndSelect('order_detail_entity.idProduct', 'product_entity')
                .leftJoinAndSelect('image_entity', "image_entity", "image_entity.idProductId = order_detail_entity.idProduct")
                .groupBy('order_detail_entity.idOrder')
                .where('order_entity.status = :status', { status })
                .offset(offset)
                .limit(limit)
                .orderBy('order_entity.oderDate', 'DESC')
                .getRawMany();
        } else {
            return await this.orderDetailRepository.createQueryBuilder('order_detail_entity')
                .leftJoinAndSelect('order_detail_entity.idOrder', 'order_entity')
                .leftJoinAndSelect('order_entity.idUser', 'user_entity')
                .leftJoinAndSelect('order_detail_entity.idProduct', 'product_entity')
                .leftJoinAndSelect('image_entity', "image_entity", "image_entity.idProductId = order_detail_entity.idProduct")
                .groupBy('order_detail_entity.idOrder')
                .where('order_entity.status = :status', { status })
                .andWhere('order_entity.idUser = :idUser', { idUser })
                .offset(offset)
                .limit(limit)
                .orderBy('order_entity.oderDate', 'DESC')
                .getRawMany();
        }


    }
    async getOrderByByID(id: any) {
        const result = await this.orderDetailRepository.createQueryBuilder('order_detail_entity')
            .leftJoinAndSelect('order_detail_entity.idOrder', 'order_entity')
            .leftJoinAndSelect('order_entity.idUser', 'user_entity')
            .leftJoinAndSelect('order_detail_entity.idProduct', 'product_entity')
            .leftJoinAndSelect('image_entity', "image_entity", "image_entity.idProductId = order_detail_entity.idProduct")
            .leftJoinAndSelect('order_entity.idAddress', 'user_info_entity')
            .where('order_entity.id = :id', { id })
            .groupBy('order_detail_entity.size, order_detail_entity.idProduct')
            .getRawMany();
        return result;
    }



    async getSumProduct(idOrder: any) {
        const array = await this.orderDetailRepository.find({ idOrder });
        let sum = 0;
        array.forEach(element => {
            sum += element.quantity;
        }
        );

        return sum;
    }
}
