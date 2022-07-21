/* eslint-disable prettier/prettier */
import { UserInfoEntity } from '@/entities/user-info.entity';
import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { createReadStream } from 'fs';
import { join } from 'path';
import { StreamableFile } from '@nestjs/common';

@Injectable()
export class UserInfoService {
    constructor(
        @InjectRepository(UserInfoEntity)
        private userInfoRepository: Repository<UserInfoEntity>
    ) { }
    async getAll(): Promise<UserInfoEntity[]> {
        return await this.userInfoRepository.find({});
    }
    async getByIDUser(idUser: any): Promise<UserInfoEntity[]> {
        return await this.userInfoRepository.find({ idUser: idUser });
    }
    async insert(userInfo: any): Promise<UserInfoEntity> {
        if (!userInfo.idUser || !userInfo.telephone || !userInfo.address ||
            !userInfo.province || !userInfo.district || !userInfo.ward
        ) {
            throw new NotFoundException('Missing data');
        }
        if (userInfo.default == 1) {
            await this.userInfoRepository.update({ idUser: userInfo.idUser }, { default: 0 });
        }

        const userInfoEntity = await this.userInfoRepository.create({
            idUser: userInfo.idUser,
            telephone: userInfo.telephone,
            fullName: userInfo.fullName,
            address: userInfo.address,
            province: userInfo.province,
            district: userInfo.district,
            ward: userInfo.ward,
            typeAddress: userInfo.typeAddress,
            default: userInfo.default,
        });

        return await this.userInfoRepository.save(userInfoEntity);


    }
    async getAllProvince() {
        const file = createReadStream(join(process.cwd(), 'local.json'));
        //read file json
        const data = await new Promise((resolve, reject) => {
            const chunks = [];
            const result = [];
            file.on('data', chunk => chunks.push(chunk));
            file.on('end', () => {
                const data = JSON.parse(Buffer.concat(chunks).toString());
                data.forEach(item => {
                    result.push({ name: item.name, code: item.code });
                }
                );
                resolve(result);
            }
            );
        }
        );
        return data;
    }
    async getAllDistrict(idProvince: string) {
        const file = createReadStream(join(process.cwd(), 'local.json'));
        //read file json
        const data = await new Promise((resolve, reject) => {
            const chunks = [];
            const result = [];
            file.on('data', chunk => chunks.push(chunk));
            file.on('end', () => {
                const data = JSON.parse(Buffer.concat(chunks).toString());
                for (let i = 0; i < data.length; i++) {
                    if (idProvince == data[i].code) {
                        data[i].districts.forEach(item => {
                            result.push({ name: item.name, code: item.code });
                        });
                        break;
                    }
                }
                resolve(result);
            }
            );
        }
        );
        return data;
    }
    async getAllWrad(idProvince: string, idDistrict: string) {
        const file = createReadStream(join(process.cwd(), 'local.json'));
        //read file json
        const data = await new Promise((resolve, reject) => {
            const chunks = [];
            const result = [];
            file.on('data', chunk => chunks.push(chunk));
            file.on('end', () => {
                const data = JSON.parse(Buffer.concat(chunks).toString());
                for (let i = 0; i < data.length; i++) {
                    if (idProvince == data[i].code) {
                        for (let j = 0; j < data[i].districts.length; j++) {
                            if (idDistrict == data[i].districts[j].code) {
                                data[i].districts[j].wards.forEach(item => {
                                    result.push({ name: item.name, code: item.code });
                                });
                                break;
                            }

                        }
                        break;
                    }
                }
                resolve(result);
            }
            );
        }
        );
        return data;
    }
}

