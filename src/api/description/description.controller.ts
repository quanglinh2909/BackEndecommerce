/* eslint-disable prettier/prettier */
import { DescriptionEntity } from '@/entities/description.entity';
import { Controller, Get, Param } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { DescriptionService } from './description.service';

@Controller('description')
export class DescriptionController {
    constructor(private readonly descriptionService: DescriptionService) { }
    @ApiTags('description')
    @Get('get-all')
    async getAll(): Promise<DescriptionEntity[]> {
        return await this.descriptionService.getAll();
    } @ApiTags('description')
    @Get('get-by-id-product/:id')
    async getByIdProduct(@Param('id') id: string): Promise<DescriptionEntity[]> {

        return await this.descriptionService.getByIdProduct(id);
    }


}
