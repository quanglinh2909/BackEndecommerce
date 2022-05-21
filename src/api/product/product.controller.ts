import { ProductEntity } from '@/entities/product.entity';
import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { ProductService } from './product.service';

@Controller('product')
export class ProductController {constructor(private readonly productService: ProductService) { }
@ApiTags('product')
@Get('get-all')
async getAll(): Promise<ProductEntity[]> {
    return await this.productService.getAll();
}}
