/* eslint-disable prettier/prettier */
import { Module } from '@nestjs/common';
import { UploadFileModule } from './upload-file/upload-file.module';
import { UserModule } from './user/user.module';
import { TagParentModule } from './tag-parent/tag-parent.module';
import { TagChildModule } from './tag-child/tag-child.module';
import { CartModule } from './cart/cart.module';
import { ColorProductModule } from './color-product/color-product.module';
import { ConlectionModule } from './conlection/conlection.module';
import { DescriptionModule } from './description/description.module';
import { ImageModule } from './image/image.module';
import { LocalBranchModule } from './local-branch/local-branch.module';
import { OrderModule } from './order/order.module';
import { OderDetailModule } from './oder-detail/oder-detail.module';
import { ProductModule } from './product/product.module';
import { UserInfoModule } from './user-info/user-info.module';
import { BannerModule } from './banner/banner.module';
const REUSE_LIST = [UserModule, UploadFileModule, BannerModule, TagParentModule, TagChildModule, CartModule, ColorProductModule, ConlectionModule, DescriptionModule, ImageModule, LocalBranchModule, OrderModule, OderDetailModule, ProductModule, UserInfoModule];
@Module({
    imports: [...REUSE_LIST],
    exports: [...REUSE_LIST],
})
export class SharedModule { }
