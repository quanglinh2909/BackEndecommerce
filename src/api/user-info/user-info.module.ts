/* eslint-disable prettier/prettier */
import { UserInfoEntity } from '@/entities/user-info.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserInfoController } from './user-info.controller';
import { UserInfoService } from './user-info.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserInfoEntity]),
  ],
  controllers: [UserInfoController],
  providers: [UserInfoService]
})
export class UserInfoModule { }
