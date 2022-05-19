import { ImageEntity } from '@/entities/image.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { ImageService } from './image.service';

@Controller('image')
export class ImageController {constructor(private readonly imageService: ImageService) { }
@ApiTags('image')
@Get('get-all')
async getAll(): Promise<ImageEntity[]> {
    return await this.imageService.getAll();
}}
