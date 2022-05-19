/* eslint-disable prettier/prettier */
import { ColorProductEntity } from '@/entities/color-product.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { ColorProductService } from './color-product.service';

@Controller('color-product')
export class ColorProductController {
    constructor(private readonly colorService: ColorProductService) { }
    @ApiTags('color-product')
    @Get('get-all')
    async getAll(): Promise<ColorProductEntity[]> {
        return await this.colorService.getAll();
    }
}
