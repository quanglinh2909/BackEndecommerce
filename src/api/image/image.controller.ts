/* eslint-disable prettier/prettier */
import { ImageEntity } from '@/entities/image.entity';
import { Body, Controller, Delete, Get, Param, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { ImageService } from './image.service';

@Controller('image')
export class ImageController {
    constructor(private readonly imageService: ImageService) { }
    @ApiTags('image')
    @Get('get-all')
    async getAll(): Promise<ImageEntity[]> {
        return await this.imageService.getAll();
    }
    @ApiTags('image')
    @Get('get-by-id-tag-parent/:idTagParent')
    async getByIdTagPatent(@Param("idTagParent") idTagParent: number) {

        return await this.imageService.getByIdTagParent(idTagParent);
    }
    @ApiTags('image')
    @Get('get-by-id-product/:idProduct')
    async getByIdProduct(@Param("idProduct") idProduct: string) {
        return await this.imageService.getByIdProduct(idProduct);
    }
    @ApiTags('image')
    @Get('get-by-id-product-paging/:idTagParent/:page/:limit')
    async getByIdTagParentPaging(@Param("idTagParent") idTagParent: number, @Param("page") page: number, @Param("limit") limit: number) {
        return await this.imageService.getByIdTagParentPaging(idTagParent, page, limit);
    }
    @ApiTags('image')
    @Get('get-by-id-child/:idTagParent/:codeTagChild/:offset/:limit')
    async getByIdTagChild(@Param("idTagParent") idTagParent: number, @Param("codeTagChild") codeTagChild: number
        , @Param("offset") offset: number, @Param("limit") limit: number) {
        return await this.imageService.getByIdTagChild(idTagParent, codeTagChild, offset, limit);
    }

    @ApiTags('image')
    @Get('get-all-product/:offset/:limit')
    async getAllPRoduct(@Param("offset") offset: number, @Param("limit") limit: number) {
        return await this.imageService.getAllProduct(offset, limit);
    }

    @ApiTags('image')
    @Delete('delete/:id/:url')
    async delete(@Param('id') id, @Param('url') url) {
        return await this.imageService.delete(id, url);
    }
    //create
    @ApiTags('image')
    @Post('create')
    async create(@Body() image) {
        return await this.imageService.createFromListImage(image);
    }

}
