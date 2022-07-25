/* eslint-disable prettier/prettier */
import { NotyficationEntity } from '@/entities/notifycation.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class NotificationService {
    constructor(
        @InjectRepository(NotyficationEntity)
        private notificatioDetailRepository: Repository<NotyficationEntity>
    ) { }
    async getAll(): Promise<NotyficationEntity[]> {
        return await this.notificatioDetailRepository.find({});
    }
    //get by id
    async getById(idUser: string): Promise<NotyficationEntity[]> {
        return await this.notificatioDetailRepository.find({ where: { idUser: idUser }, relations: ['idOrder'], order: { createdAt: 'DESC' } });
    }
    //set status
    async setStatus(id: string) {
        const result = await this.notificatioDetailRepository.createQueryBuilder('notification_entity')
            .update()
            .set({ status: 1 })
            .where('id = :id', { id })
            .execute();
        return result;
    }
}
