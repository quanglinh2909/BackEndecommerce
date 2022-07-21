/* eslint-disable prettier/prettier */
import { ImageEntity } from '@/entities/image.entity';
import { LocalBranchEntity } from '@/entities/local-branch.entity';
import { ProductEntity } from '@/entities/product.entity';
import { TagParentEntity } from '@/entities/tag-parent.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProductController } from './product.controller';
import { ProductService } from './product.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([ProductEntity]),
    TypeOrmModule.forFeature([ImageEntity]),
    TypeOrmModule.forFeature([LocalBranchEntity]),
    TypeOrmModule.forFeature([TagParentEntity]),
  ],
  controllers: [ProductController],
  providers: [ProductService]
})
export class ProductModule { }
