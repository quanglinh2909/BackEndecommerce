import { UserInfoEntity } from '@/entities/user-info.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class UserInfoService {
    constructor(
        @InjectRepository(UserInfoEntity)
        private userInfoRepository: Repository<UserInfoEntity>
    ) { }
    async getAll(): Promise<UserInfoEntity[]> {
        return await this.userInfoRepository.find({});
    }
}

