import { LocalBranchEntity } from '@/entities/local-branch.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { LocalBranchService } from './local-branch.service';

@Controller('local-branch')
export class LocalBranchController {constructor(private readonly localBrachService: LocalBranchService) { }
@ApiTags('local-branch')
@Get('get-all')
async getAll(): Promise<LocalBranchEntity[]> {
    return await this.localBrachService.getAll();
}}
