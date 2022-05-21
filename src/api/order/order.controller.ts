import { OrderEntity } from '@/entities/oder.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { OrderService } from './order.service';

@Controller('order')
export class OrderController {constructor(private readonly orderService: OrderService) { }
@ApiTags('order')
@Get('get-all')
async getAll(): Promise<OrderEntity[]> {
    return await this.orderService.getAll();
}}
