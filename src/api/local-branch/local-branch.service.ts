/* eslint-disable prettier/prettier */
import { LocalBranchEntity } from '@/entities/local-branch.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class LocalBranchService {
        constructor(
            @InjectRepository(LocalBranchEntity)
            private LocalBranchRepository: Repository<LocalBranchEntity>
        ) { }
    async getAll(): Promise<LocalBranchEntity[]> {
        return await this.LocalBranchRepository.find({});
    }
}

