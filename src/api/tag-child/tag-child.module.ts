/* eslint-disable prettier/prettier */
import { TagChildEntity } from '@/entities/tag-child.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TagChildController } from './tag-child.controller';
import { TagChildService } from './tag-child.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([TagChildEntity]),
  ],
  controllers: [TagChildController],
  providers: [TagChildService]
})
export class TagChildModule { }
