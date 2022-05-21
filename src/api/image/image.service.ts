import { ImageEntity } from '@/entities/image.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ImageService {constructor(
    @InjectRepository(ImageEntity)
    private imageEntityRepository: Repository<ImageEntity>
) { }
async getAll(): Promise<ImageEntity[]> {
    return await this.imageEntityRepository.find({});
}}
