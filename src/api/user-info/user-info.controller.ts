import { UserInfoEntity } from '@/entities/user-info.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { UserInfoService } from './user-info.service';

@Controller('user-info')
export class UserInfoController {
    constructor(private readonly userInfoService: UserInfoService) { }
    @ApiTags('user-info')
    @Get('get-all')
    async getAll(): Promise<UserInfoEntity[]> {
        return await this.userInfoService.getAll();
    }
}
