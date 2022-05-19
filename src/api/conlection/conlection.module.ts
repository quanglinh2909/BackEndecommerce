/* eslint-disable prettier/prettier */
import { ConlectionEntity } from '@/entities/conlection.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConlectionController } from './conlection.controller';
import { ConlectionService } from './conlection.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([ConlectionEntity]),
  ],
  controllers: [ConlectionController],
  providers: [ConlectionService]
})
export class ConlectionModule { }
