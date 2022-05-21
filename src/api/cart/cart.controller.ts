/* eslint-disable prettier/prettier */
import { CartEntity } from '@/entities/cart.entity';
import { Controller, Get } from '@nestjs/common';
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
}
