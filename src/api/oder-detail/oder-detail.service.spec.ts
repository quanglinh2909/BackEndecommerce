import { Test, TestingModule } from '@nestjs/testing';
import { OderDetailService } from './oder-detail.service';

describe('OderDetailService', () => {
  let service: OderDetailService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [OderDetailService],
    }).compile();

    service = module.get<OderDetailService>(OderDetailService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
