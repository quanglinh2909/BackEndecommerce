/* eslint-disable prettier/prettier */
import { ConlectionEntity } from '@/entities/conlection.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { ConlectionService } from './conlection.service';

@Controller('conlection')
export class ConlectionController {
    constructor(private readonly conlectionService: ConlectionService) { }
    @ApiTags('conlection')
    @Get('get-all')
    async getAll(): Promise<ConlectionEntity[]> {
        return await this.conlectionService.getAll();
    }
}
