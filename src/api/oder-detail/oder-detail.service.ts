import { OrderDetailEntity } from '@/entities/orderDetail.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class OderDetailService {constructor(
    @InjectRepository(OrderDetailEntity)
    private orderDetailRepository: Repository<OrderDetailEntity>
) { }
async getAll(): Promise<OrderDetailEntity[]> {
    return await this.orderDetailRepository.find({});
}}
