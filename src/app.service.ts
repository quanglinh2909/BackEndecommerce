import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    //hel hau
    return 'Hello World!';
  }
}
