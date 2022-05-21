import { LocalBranchEntity } from '@/entities/local-branch.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { LocalBranchController } from './local-branch.controller';
import { LocalBranchService } from './local-branch.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([LocalBranchEntity]),
  ],
  controllers: [LocalBranchController],
  providers: [LocalBranchService]
})
export class LocalBranchModule {}
