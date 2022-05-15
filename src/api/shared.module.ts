/* eslint-disable prettier/prettier */
import { Module } from '@nestjs/common';
import { UploadFileModule } from './upload-file/upload-file.module';
import { UserModule } from './user/user.module';
const REUSE_LIST = [UserModule, UploadFileModule];
@Module({
    imports: [...REUSE_LIST],
    exports: [...REUSE_LIST],
})
export class SharedModule { }
