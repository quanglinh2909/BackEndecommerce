import { Test, TestingModule } from '@nestjs/testing';
import { OderDetailController } from './oder-detail.controller';

describe('OderDetailController', () => {
  let controller: OderDetailController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [OderDetailController],
    }).compile();

    controller = module.get<OderDetailController>(OderDetailController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
