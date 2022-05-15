import { getDatePath } from '@/utils/upload';
import { Injectable } from '@nestjs/common';

@Injectable()
export class UploadFileService {
    async uploadFiles(files: any) {
        const response = [];
        files.forEach((file) => {
            const fileReponse = {
                originalname: file.originalname,
                filename: file.filename,
                path: getDatePath() + '/' + file.filename,
            };
            response.push(fileReponse);
        });
        return response;
    }
}
