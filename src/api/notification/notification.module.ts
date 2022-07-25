/* eslint-disable prettier/prettier */
import { NotyficationEntity } from '@/entities/notifycation.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { NotificationController } from './notification.controller';
import { NotificationService } from './notification.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([NotyficationEntity]),
  ],
  controllers: [NotificationController],
  providers: [NotificationService]
})
export class NotificationModule { }
