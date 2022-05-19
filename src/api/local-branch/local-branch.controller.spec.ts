import { Test, TestingModule } from '@nestjs/testing';
import { LocalBranchController } from './local-branch.controller';

describe('LocalBranchController', () => {
  let controller: LocalBranchController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [LocalBranchController],
    }).compile();

    controller = module.get<LocalBranchController>(LocalBranchController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
