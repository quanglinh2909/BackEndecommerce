/* eslint-disable prettier/prettier */
import { OrderDetailEntity } from '@/entities/order-detail.entity';
import { Controller, Get, Param } from '@nestjs/common';
import { ApiPayloadTooLargeResponse, ApiTags } from '@nestjs/swagger';
import { OderDetailService } from './oder-detail.service';

@Controller('oder-detail')
export class OderDetailController {
    constructor(private readonly orderDetailService: OderDetailService) { }
    @ApiTags('oder-detail')
    @Get('get-all')
    async getAll(): Promise<OrderDetailEntity[]> {
        return await this.orderDetailService.getAll();
    }
    @ApiTags('oder-detail')
    @Get('get-by-status/:status/:page/:limit/:idUser')
    async getOrderByStatus(@Param('status') status: number, @Param('page') page: number,
        @Param('limit') limit: number, @Param('idUser') idUser: number): Promise<OrderDetailEntity[]> {
        return await this.orderDetailService.getOrderByStatus(status, page, limit, idUser);
    }
    @ApiTags('oder-detail')
    @Get('get-sum-procut/:idOrder')
    async getSumProduct(@Param('idOrder') idOrder: any): Promise<number> {
        return await this.orderDetailService.getSumProduct(idOrder);
    }

    @ApiTags('oder-detail')
    @Get('get-order-by-id/:idOrder')
    async getOrderByByID(@Param('idOrder') idOrder: any) {
        return await this.orderDetailService.getOrderByByID(idOrder);
    }
}

