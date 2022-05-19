import { Test, TestingModule } from '@nestjs/testing';
import { DescriptionService } from './description.service';

describe('DescriptionService', () => {
  let service: DescriptionService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [DescriptionService],
    }).compile();

    service = module.get<DescriptionService>(DescriptionService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
