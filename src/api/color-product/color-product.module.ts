/* eslint-disable prettier/prettier */
import { ColorProductEntity } from '@/entities/color-product.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ColorProductController } from './color-product.controller';
import { ColorProductService } from './color-product.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([ColorProductEntity]),
  ],
  controllers: [ColorProductController],
  providers: [ColorProductService]
})
export class ColorProductModule { }
