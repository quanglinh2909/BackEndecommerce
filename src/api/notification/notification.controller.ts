/* eslint-disable prettier/prettier */
import { NotyficationEntity } from '@/entities/notifycation.entity';
import { Controller, Get, Param, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { NotificationService } from './notification.service';

@Controller('notification')
export class NotificationController {
    constructor(private readonly notifycationService: NotificationService) { }
    @ApiTags('notification')
    @Get('get-all')
    async getAll(): Promise<NotyficationEntity[]> {
        return await this.notifycationService.getAll();
    }
    @ApiTags('notification')
    @Get('get-by-id/:idUser')
    async getById(@Param('idUser') idUser): Promise<NotyficationEntity[]> {
        return await this.notifycationService.getById(idUser);
    }
    @ApiTags('notification')
    @Post('update/:id')
    async setStatus(@Param('id') id) {
        return await this.notifycationService.setStatus(id);
    }

}
