/* eslint-disable prettier/prettier */
import { CartEntity } from '@/entities/cart.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class CartService {
    constructor(
        @InjectRepository(CartEntity)
        private cartRepository: Repository<CartEntity>
    ) { }
    async getAll(): Promise<CartEntity[]> {
        return await this.cartRepository.find({});
    }
}
