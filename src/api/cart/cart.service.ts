/* eslint-disable prettier/prettier */
import { CardDto } from '@/dto/cart.dto';
import { CartEntity } from '@/entities/cart.entity';
import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { getConnection } from "typeorm";

@Injectable()
export class CartService {
    constructor(
        @InjectRepository(CartEntity)
        private cartRepository: Repository<CartEntity>
    ) { }
    async getAll(): Promise<CartEntity[]> {
        return await this.cartRepository.find({});
    }
    async getByIdUser(id: number) {
        const result = this.cartRepository
            .createQueryBuilder("cart_entity")
            .leftJoinAndSelect("cart_entity.idProduct", "product_entity")
            .leftJoinAndSelect('image_entity', "image_entity", "image_entity.idProductId = cart_entity.idProduct")
            .where("cart_entity.idUser = :id", { id: id })
            .groupBy("cart_entity.idProduct")
            .addGroupBy("cart_entity.size")
            .getRawMany();
        return result;
    }
    async insert(cart: any): Promise<CartEntity> {

        const currentCart: any = await this.cartRepository.findOne({
            where: {
                idUser: cart.idUser,
                idProduct: cart.idProduct,
                size: cart.size,
            },
        });

        if (currentCart) {
            currentCart.quantity += cart.quantity;

            return await this.cartRepository.save(currentCart);
        } else {
            const cartResult = await this.cartRepository.create(
                {
                    idProduct: cart.idProduct,
                    idUser: cart.idUser,
                    quantity: cart.quantity,
                    size: cart.size,

                }
            );

            return await this.cartRepository.save(cartResult);
        }

    }
    async update(cart: CartEntity): Promise<CartEntity> {

        if (!cart.quantity || !cart.id || !cart.idProduct || !cart.idUser || !cart.size) {
            throw new NotFoundException('Not found classify id!');
        }
        const currentCart: any = await this.cartRepository.findOne({
            where: {
                id: cart.id,
            },
        });
        if (!currentCart) throw new NotFoundException('Not found cart id!');
        return await this.cartRepository.save(cart);
    }
    async delete(id: number) {
        const currentCart: any = await this.cartRepository.findOne({
            where: {
                id: id,
            },
        });
        if (!currentCart) throw new NotFoundException('Not found cart id!');
        return await this.cartRepository.remove(currentCart);
    }

}
