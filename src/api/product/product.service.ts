import { ProductEntity } from '@/entities/product.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ProductService {constructor(
    @InjectRepository(ProductEntity)
    private conlectionRepository: Repository<ProductEntity>
) { }
async getAll(): Promise<ProductEntity[]> {
    return await this.conlectionRepository.find({});
}}
