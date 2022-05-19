import { ImageEntity } from '@/entities/image.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ImageController } from './image.controller';
import { ImageService } from './image.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([ImageEntity]),
  ],
  controllers: [ImageController],
  providers: [ImageService]
})
export class ImageModule {}
