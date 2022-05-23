import { DescriptionEntity } from '@/entities/description.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DescriptionController } from './description.controller';
import { DescriptionService } from './description.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([DescriptionEntity]),
  ],
  controllers: [DescriptionController],
  providers: [DescriptionService]
})
export class DescriptionModule {}
