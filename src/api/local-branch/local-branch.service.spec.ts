import { Test, TestingModule } from '@nestjs/testing';
import { LocalBranchService } from './local-branch.service';

describe('LocalBranchService', () => {
  let service: LocalBranchService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [LocalBranchService],
    }).compile();

    service = module.get<LocalBranchService>(LocalBranchService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
