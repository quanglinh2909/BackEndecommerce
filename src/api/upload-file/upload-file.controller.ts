/* eslint-disable prettier/prettier */
import { Controller, Post, UploadedFiles, UseGuards, UseInterceptors } from '@nestjs/common';
import { FilesInterceptor } from '@nestjs/platform-express';
import { ApiTags } from '@nestjs/swagger';
import { UploadFileService } from './upload-file.service';
import { diskStorage } from 'multer';
import { getDirPathUpload } from '@/utils/upload';

@Controller('upload-file')
export class UploadFileController {
    constructor(private readonly fileUploadService: UploadFileService) { }

    // @UseGuards(JwtAuthGuard)
    @ApiTags('File Upload Api')
    @Post()
    @UseInterceptors(
        FilesInterceptor('files', 20, {
            storage: diskStorage({
                destination: (req, file, cb) => {
                    cb(null, getDirPathUpload());
                },
                filename: (req, file, cb) => {
                    cb(null, new Date().toISOString().replace(/:/g, '-') + '-' + file.originalname);
                },
            }),
        })
    )
    async uploadMultipleFiles(@UploadedFiles() files) {
        return this.fileUploadService.uploadFiles(files);
    }
}
