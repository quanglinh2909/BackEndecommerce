/* eslint-disable prettier/prettier */
import { ImageEntity } from '@/entities/image.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ImageService {
    constructor(
        @InjectRepository(ImageEntity)
        private imageEntityRepository: Repository<ImageEntity>
    ) { }
    async getAll(): Promise<ImageEntity[]> {
        return await this.imageEntityRepository.find({});
    }
    async getByIdTagParent(idTagParent: number) {
        return await this.imageEntityRepository
            .createQueryBuilder('image_entity')
            .leftJoinAndSelect('image_entity.idProduct', 'product_entity')
            .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
            .where('product_entity.idParent = :idTagParent', { idTagParent })
            .groupBy('image_entity.idProduct')
            .orderBy('image_entity.idProduct', 'ASC')
            .limit(10)
            .getMany();

    }

    async getByIdTagParentPaging(idTagParent: number, page: number, limit: number) {
        return await this.imageEntityRepository
            .createQueryBuilder('image_entity')
            .leftJoinAndSelect('image_entity.idProduct', 'product_entity')
            .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
            .where('product_entity.idParent = :idTagParent', { idTagParent })
            .groupBy('image_entity.idProduct')
            .orderBy('image_entity.idProduct', 'ASC')
            .offset(page)
            .limit(limit)
            .getMany();

    }

    // 0: Sản phẩm nổi bật
    //1: Sản phẩm mới
    //2: sản phẩm khuyến mãi
    async getByIdTagChild(idTagParent: number, codeTagChild: number, offset: number, limit: number) {
        if (codeTagChild == 0) {
            return await this.imageEntityRepository
                .createQueryBuilder('image_entity')
                .leftJoinAndSelect('image_entity.idProduct', 'product_entity')
                .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
                .where('product_entity.idParent = :idTagParent', { idTagParent })
                .groupBy('image_entity.idProduct')
                .orderBy('product_entity.rating ', 'DESC')
                .offset(offset)
                .limit(limit)
                .getMany();

        } else if (codeTagChild == 1) {
            return await this.imageEntityRepository
                .createQueryBuilder('image_entity')
                .leftJoinAndSelect('image_entity.idProduct', 'product_entity')
                .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
                .where('product_entity.idParent = :idTagParent', { idTagParent })
                .groupBy('image_entity.idProduct')
                .orderBy('product_entity.createdAt', 'DESC')
                .offset(offset)
                .limit(limit)
                .getMany();
        } else {
            return await this.imageEntityRepository
                .createQueryBuilder('image_entity')
                .leftJoinAndSelect('image_entity.idProduct', 'product_entity')
                .leftJoinAndSelect('product_entity.idParent', 'tag_parent_entity')
                .where('product_entity.idParent = :idTagParent', { idTagParent })
                .andWhere('product_entity.sale > 0')
                .groupBy('image_entity.idProduct')
                .orderBy('image_entity.idProduct', 'DESC')
                .offset(offset)
                .limit(limit)
                .getMany();
        }



    }
    async getByIdProduct(idProduct: string) {
        return await this.imageEntityRepository.find({
            where: { idProduct: idProduct }
        });

    }
}
