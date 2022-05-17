/* eslint-disable prettier/prettier */
import { TagChildEntity } from '@/entities/tag-child.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { TagChildService } from './tag-child.service';

@Controller('tag-child')
export class TagChildController {
    constructor(private readonly tagChildService: TagChildService) { }
    @ApiTags('tag-child')
    @Get('get-all-tags-child')
    async getAll(): Promise<TagChildEntity[]> {
        return await this.tagChildService.getAll();
    }
}
