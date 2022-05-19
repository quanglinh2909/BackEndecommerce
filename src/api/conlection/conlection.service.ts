/* eslint-disable prettier/prettier */
import { ConlectionEntity } from '@/entities/conlection.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ConlectionService {
    constructor(
        @InjectRepository(ConlectionEntity)
        private conlectionRepository: Repository<ConlectionEntity>
    ) { }
    async getAll(): Promise<ConlectionEntity[]> {
        return await this.conlectionRepository.find({});
    }
}
