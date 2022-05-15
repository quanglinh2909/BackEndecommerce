/* eslint-disable prettier/prettier */
import { Controller, Get } from '@nestjs/common';
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
}
