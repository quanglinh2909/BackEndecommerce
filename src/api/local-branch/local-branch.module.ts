import { Module } from '@nestjs/common';
import { LocalBranchController } from './local-branch.controller';
import { LocalBranchService } from './local-branch.service';

@Module({
  controllers: [LocalBranchController],
  providers: [LocalBranchService]
})
export class LocalBranchModule {}
