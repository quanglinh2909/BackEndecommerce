/* eslint-disable prettier/prettier */
import { ImageEntity } from '@/entities/image.entity';
import { LocalBranchEntity } from '@/entities/local-branch.entity';
import { ProductEntity } from '@/entities/product.entity';
import { TagParentEntity } from '@/entities/tag-parent.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { v4 as uuid } from 'uuid';

@Injectable()
export class ProductService {
    constructor(
        @InjectRepository(ProductEntity)
        private productRepository: Repository<ProductEntity>,
        @InjectRepository(ImageEntity)
        private imageRepository: Repository<ImageEntity>,
        @InjectRepository(TagParentEntity)
        private tagParentRepository: Repository<TagParentEntity>,
        @InjectRepository(LocalBranchEntity)
        private brachRepository: Repository<LocalBranchEntity>
    ) { }
    async getAll(): Promise<ProductEntity[]> {
        return await this.productRepository.find({});
    }
    async getByIdProduct(id: string): Promise<ProductEntity> {
        return await this.productRepository.findOne({
            where: { id: id },
            relations: ['idlocalbranch', 'idParent',]
        });

    }

    async create(data: any): Promise<ProductEntity> {
        const product = data.product;
        const listImage = data.listImage;
        const localBranch = await this.brachRepository.findOne({ where: { id: product.idlocalbranch } });
        const tagParent = await this.tagParentRepository.findOne({ where: { id: product.idParent } });


        const createProduct = await this.productRepository.create({
            id: uuid(),
            idlocalbranch: product.idlocalbranch,
            idParent: product.idParent,
            name: product.name,
            price: product.price,
            S: product.S,
            M: product.M,
            L: product.L,
            XL: product.XL,
            rating: 5,
            sale: 0,

        });
        const result = await this.productRepository.save(createProduct);
        listImage.forEach(async (image: any) => {
            const img = await this.imageRepository.create({
                idProduct: result,
                url: image.url,
            });
            await this.imageRepository.save(img);
        }
        );
        return result;

    }
    async updateProduct(product: any): Promise<ProductEntity> {
        const updateProduct = await this.productRepository.findOne({
            where: { id: product.id },
        });
        if (product.name) {
            updateProduct.name = product.name;
        }
        if (product.price) {
            updateProduct.price = product.price;
        }
        if (product.S) {
            updateProduct.S = product.S;
        }
        if (product.M) {
            updateProduct.M = product.M;
        }
        if (product.L) {
            updateProduct.L = product.L;
        }
        if (product.XL) {
            updateProduct.XL = product.XL;
        }
        if (product.idlocalbranch) {
            updateProduct.idlocalbranch = product.idlocalbranch;
        }
        if (product.idParent) {
            updateProduct.idParent = product.idParent;
        }
        return await this.productRepository.save(updateProduct);


    }
    async getCountByIdParent(idParent: number): Promise<number> {
        return await this.productRepository.count({
            where: { idParent: idParent }
        });

    }
    async getSumProduct(): Promise<number> {
        return await this.productRepository.count();

    }
    async softDelete(id) {
        const product = await this.productRepository.findOne({
            where: { id: id },
        });
        if (!product) {
            throw new Error('Product not found');
        }
        return await this.productRepository.softDelete(product);

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
