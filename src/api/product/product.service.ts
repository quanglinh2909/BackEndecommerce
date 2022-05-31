/* eslint-disable prettier/prettier */
import { ProductEntity } from '@/entities/product.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ProductService {
    constructor(
        @InjectRepository(ProductEntity)
        private productRepository: Repository<ProductEntity>
    ) { }
    async getAll(): Promise<ProductEntity[]> {
        return await this.productRepository.find({});
    }
    async getByIdProduct(id: string): Promise<ProductEntity> {
        return await this.productRepository.findOne({
            where: { id: id },
            relations: ['idlocalbranch', 'idColection', 'idParent',]
        });

    }
    async getCountByIdParent(idParent: number): Promise<number> {
        return await this.productRepository.count({
            where: { idParent: idParent }
        });

    }
    // 0: Sản phẩm nổi bật
    //1: Sản phẩm mới
    //2: sản phẩm khuyến mãi
    async getTotalProductByTagChild(idTagParent: number, codeTagChild: number): Promise<number> {
        if (codeTagChild == 0) {
            return await this.productRepository
                .createQueryBuilder('product_entity')
                .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
                .where('product_entity.idParent = :idTagParent', { idTagParent })
                .groupBy('product_entity.id')
                .orderBy('product_entity.rating ', 'DESC')
                .getCount();

        } else if (codeTagChild == 1) {
            return await this.productRepository
                .createQueryBuilder('product_entity')
                .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
                .where('product_entity.idParent = :idTagParent', { idTagParent })
                .groupBy('product_entity.id')
                .orderBy('product_entity.createdAt ', 'DESC')
                .getCount();

        } else {
            return await this.productRepository
                .createQueryBuilder('product_entity')
                .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
                .where('product_entity.idParent = :idTagParent', { idTagParent })
                .andWhere('product_entity.sale > 0')
                .groupBy('product_entity.id')
                .orderBy('product_entity.id ', 'DESC')
                .getCount();

        }



    }

}
