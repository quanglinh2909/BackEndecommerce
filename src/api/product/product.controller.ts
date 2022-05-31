/* eslint-disable prettier/prettier */
import { ProductEntity } from '@/entities/product.entity';
import { Controller, Get, Param } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { ProductService } from './product.service';

@Controller('product')
export class ProductController {
    constructor(private readonly productService: ProductService) { }
    @ApiTags('product')
    @Get('get-all')
    async getAll(): Promise<ProductEntity[]> {
        return await this.productService.getAll();
    }
    @ApiTags('product')
    @Get('get-by-id/:id')
    async getById(@Param('id') id): Promise<ProductEntity> {
        return await this.productService.getByIdProduct(id);
    }
    @ApiTags('product')
    @Get('get-count-parent/:id')
    async getCountByIdParent(@Param('id') id): Promise<number> {
        return await this.productService.getCountByIdParent(id);
    }
    @ApiTags('product')
    @Get('get-total-by-id-child/:idTagParent/:codeTagChild')
    async getTotalProductByTagChild(@Param("idTagParent") idTagParent: number, @Param("codeTagChild") codeTagChild: number): Promise<number> {
        return await this.productService.getTotalProductByTagChild(idTagParent, codeTagChild);
    }

}
