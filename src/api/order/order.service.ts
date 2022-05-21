import { OrderEntity } from '@/entities/oder.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class OrderService {constructor(
    @InjectRepository(OrderEntity)
    private orderRepository: Repository<OrderEntity>
) { }
async getAll(): Promise<OrderEntity[]> {
    return await this.orderRepository.find({});
}}
