/* eslint-disable prettier/prettier */
import { CartEntity } from '@/entities/cart.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CartController } from './cart.controller';
import { CartService } from './cart.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([CartEntity]),
  ],
  controllers: [CartController],
  providers: [CartService]
})
export class CartModule { }
