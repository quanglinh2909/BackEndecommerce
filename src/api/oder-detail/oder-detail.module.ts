import { Module } from '@nestjs/common';
import { OderDetailController } from './oder-detail.controller';
import { OderDetailService } from './oder-detail.service';

@Module({
  controllers: [OderDetailController],
  providers: [OderDetailService]
})
export class OderDetailModule {}
