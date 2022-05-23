import { OrderDetailEntity } from '@/entities/orderDetail.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiPayloadTooLargeResponse, ApiTags } from '@nestjs/swagger';
import { OderDetailService } from './oder-detail.service';

@Controller('oder-detail')
export class OderDetailController {constructor(private readonly orderDetailService: OderDetailService) { }
@ApiTags('oder-detail')
@Get('get-all')
async getAll(): Promise<OrderDetailEntity[]> {
    return await this.orderDetailService.getAll();
}}
