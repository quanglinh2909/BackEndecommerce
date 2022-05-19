/* eslint-disable prettier/prettier */
import { ColorProductEntity } from '@/entities/color-product.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ColorProductService {
    constructor(
        @InjectRepository(ColorProductEntity)
        private colorRepository: Repository<ColorProductEntity>
    ) { }
    async getAll(): Promise<ColorProductEntity[]> {
        return await this.colorRepository.find({});
    }
}
