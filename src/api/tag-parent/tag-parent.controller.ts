/* eslint-disable prettier/prettier */
import { TagParentEntity } from '@/entities/tag-parent.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { TagParentService } from './tag-parent.service';

@Controller('tag-parent')
export class TagParentController {
    constructor(private readonly tagParentService: TagParentService) { }
    @ApiTags('tag-parent')
    @Get('get-all-tags-parent')
    async getAll(): Promise<TagParentEntity[]> {
        return await this.tagParentService.getAll();
    }
}
