/* eslint-disable prettier/prettier */
import { CardDto } from '@/dto/cart.dto';
import { CartEntity } from '@/entities/cart.entity';
import { Body, Controller, Delete, Get, Param, Post, Put } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { CartService } from './cart.service';

@Controller('cart')
export class CartController {
    constructor(private readonly cartService: CartService) { }
    @ApiTags('cart')
    @Get('get-all')
    async getAll(): Promise<CartEntity[]> {
        return await this.cartService.getAll();
    }
    @ApiTags('cart')
    @Get('get-by-id-user/:id')
    async getByIdUser(@Param('id') id: number): Promise<CartEntity[]> {
        return await this.cartService.getByIdUser(id);
    }
    @ApiTags('cart')
    @Post('insert')
    async insert(@Body() cart: CardDto): Promise<CartEntity> {
        return await this.cartService.insert(cart);
    }

    @ApiTags('cart')
    @Put('update')
    async update(@Body() cart: CartEntity): Promise<CartEntity> {

        return await this.cartService.update(cart);
    }
    @ApiTags('cart')
    @Delete('delete/:id')
    async delete(@Param('id') id: number) {
        return await this.cartService.delete(id);
    }

}
