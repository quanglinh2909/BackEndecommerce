/* eslint-disable prettier/prettier */
import { CartEntity } from '@/entities/cart.entity';
import { NotyficationEntity } from '@/entities/notifycation.entity';
import { OrderEntity } from '@/entities/oder.entity';
import { OrderDetailEntity } from '@/entities/order-detail.entity';
import { ProductEntity } from '@/entities/product.entity';
import { UserEntity } from '@/entities/user.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { OrderController } from './order.controller';
import { OrderService } from './order.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([OrderEntity]),
    TypeOrmModule.forFeature([OrderDetailEntity]),
    TypeOrmModule.forFeature([ProductEntity]),
    TypeOrmModule.forFeature([CartEntity]),
    TypeOrmModule.forFeature([NotyficationEntity]),
    TypeOrmModule.forFeature([UserEntity]),


  ],
  controllers: [OrderController],
  providers: [OrderService]
})
export class OrderModule { }
