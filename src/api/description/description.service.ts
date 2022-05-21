import { DescriptionEntity } from '@/entities/description.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class DescriptionService {constructor(
    @InjectRepository(DescriptionEntity)
    private descriptionEntityRepository: Repository<DescriptionEntity>
) { }
async getAll(): Promise<DescriptionEntity[]> {
    return await this.descriptionEntityRepository.find({});
}}
