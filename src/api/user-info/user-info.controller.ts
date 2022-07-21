/* eslint-disable prettier/prettier */
import { UserInfoEntity } from '@/entities/user-info.entity';
import { Body, Controller, Get, Param, Post } from '@nestjs/common';
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
    @ApiTags('user-info')
    @Get('by-user/:idUser')
    async getByIDUser(@Param("idUser") idUser: any): Promise<UserInfoEntity[]> {
        return await this.userInfoService.getByIDUser(idUser);
    }
    @ApiTags('user-info')
    @Get('get-address')
    async getAllProvince() {
        return await this.userInfoService.getAllProvince();
    }
    @ApiTags('user-info')
    @Get('get-districts/:idProvince')
    async getAllDistrict(@Param('idProvince') idProvince: string) {
        return await this.userInfoService.getAllDistrict(idProvince);
    }
    @ApiTags('user-info')
    @Get('get-ward/:idProvince/:idDistrict')
    async getAllWrad(@Param('idProvince') idProvince: string, @Param('idDistrict') idDistrict: string) {
        return await this.userInfoService.getAllWrad(idProvince, idDistrict);
    }
    @ApiTags('user-info')
    @Post('insert')
    async insert(@Body() userInfo: any): Promise<UserInfoEntity> {
        return await this.userInfoService.insert(userInfo);
    }
}
