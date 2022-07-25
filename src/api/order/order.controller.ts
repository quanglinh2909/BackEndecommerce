/* eslint-disable prettier/prettier */
import { OrderEntity } from '@/entities/oder.entity';
import { Body, Controller, Get, Param, Post, Put } from '@nestjs/common';
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
    @ApiTags('order')
    @Get('total-page/:status')
    async getTotalPage(@Param('status') status: number): Promise<number> {
        return await this.orderService.getTotalPage(status);
    }
    //upadte status
    @ApiTags('order')
    @Put('update-status/:id/:status/:role')
    async updateStatus(@Param('id') id: any, @Param('status') status: number, @Param('role') role: number): Promise<any> {
        return await this.orderService.updateStatus(id, status, role);
    }
}
