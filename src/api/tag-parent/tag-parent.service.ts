/* eslint-disable prettier/prettier */
import { TagParentEntity } from '@/entities/tag-parent.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class TagParentService {
    constructor(@InjectRepository(TagParentEntity)
    private tagParentRepository: Repository<TagParentEntity>) { }
    async getAll(): Promise<TagParentEntity[]> {
        return await this.tagParentRepository.find({});
    }
}
