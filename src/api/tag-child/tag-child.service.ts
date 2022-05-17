/* eslint-disable prettier/prettier */
import { TagChildEntity } from '@/entities/tag-child.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class TagChildService {
    constructor(
        @InjectRepository(TagChildEntity)
        private tagChildRepository: Repository<TagChildEntity>
    ) { }
    async getAll(): Promise<TagChildEntity[]> {
        return await this.tagChildRepository.find({
            relations: ['idTagParent'],
        });
    }
}
