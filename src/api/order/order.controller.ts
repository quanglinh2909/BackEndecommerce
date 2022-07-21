/* eslint-disable prettier/prettier */
import { OrderEntity } from '@/entities/oder.entity';
import { Body, Controller, Get, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { OrderService } from './order.service';

@Controller('order')
export class OrderController {
    constructor(private readonly orderService: OrderService) { }
    @ApiTags('order')
    @Get('get-all')
    async getAll(): Promise<OrderEntity[]> {
        return await this.orderService.getAll();
    }
    @ApiTags('order')
    @Post('insert')
    async insert(@Body() order: any) {
        return await this.orderService.insert(order);
    }
}
