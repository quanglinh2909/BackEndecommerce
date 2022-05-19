import { Module } from '@nestjs/common';
import { DescriptionController } from './description.controller';
import { DescriptionService } from './description.service';

@Module({
  controllers: [DescriptionController],
  providers: [DescriptionService]
})
export class DescriptionModule {}
