/* eslint-disable prettier/prettier */
import { Module } from '@nestjs/common';
import { UserController } from './user.controller';
import { UserService } from './user.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserEntity } from 'src/entities';

@Module({
  imports: [TypeOrmModule.forFeature([UserEntity]),],
  controllers: [UserController],
  providers: [UserService]
})
export class UserModule { }
