/* eslint-disable prettier/prettier */
import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    //ngan hello 1
    //hel hau
    return 'Hello World!';
  }
}
