/* eslint-disable prettier/prettier */
import { Module } from '@nestjs/common';
import { UploadFileModule } from './upload-file/upload-file.module';
import { UserModule } from './user/user.module';
import { TagParentModule } from './tag-parent/tag-parent.module';
import { TagChildModule } from './tag-child/tag-child.module';
const REUSE_LIST = [UserModule, UploadFileModule, TagParentModule, TagChildModule];
@Module({
    imports: [...REUSE_LIST],
    exports: [...REUSE_LIST],
})
export class SharedModule { }
