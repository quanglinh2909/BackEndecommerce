/* eslint-disable prettier/prettier */
import { UserLogin, UserRegister } from '@/dto/user.dto';
import { Body, Controller, Get, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { UserEntity } from 'src/entities';
import { UserService } from './user.service';

@Controller('user')
export class UserController {
    constructor(private readonly userService: UserService) { }
    @ApiTags('user')
    @Get('get-all-user')
    async getAll(): Promise<UserEntity[]> {
        return await this.userService.getAll();
    }
    @ApiTags('user')
    @Post('create')
    async create(@Body() userRegister: UserRegister): Promise<UserEntity> {
        return await this.userService.create(userRegister);
    }
    @ApiTags('user')
    @Post('login')
    async login(@Body() userLogin: UserLogin): Promise<UserEntity> {
        return await this.userService.login(userLogin);
    }
}
