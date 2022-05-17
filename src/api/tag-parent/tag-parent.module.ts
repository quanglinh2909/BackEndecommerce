/* eslint-disable prettier/prettier */
import { TagParentEntity } from '@/entities/tag-parent.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TagParentController } from './tag-parent.controller';
import { TagParentService } from './tag-parent.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([TagParentEntity]),
  ],
  controllers: [TagParentController],
  providers: [TagParentService]
})
export class TagParentModule { }
