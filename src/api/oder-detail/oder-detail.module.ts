/* eslint-disable prettier/prettier */
import { OrderDetailEntity } from '@/entities/order-detail.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { OderDetailController } from './oder-detail.controller';
import { OderDetailService } from './oder-detail.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([OrderDetailEntity]),
  ],
  controllers: [OderDetailController],
  providers: [OderDetailService]
})
export class OderDetailModule { }
