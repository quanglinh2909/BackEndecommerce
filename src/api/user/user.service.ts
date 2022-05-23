/* eslint-disable prettier/prettier */
import { UserRegister } from '@/dto/user.dto';
import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserEntity } from 'src/entities';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UserService {
    constructor(
        @InjectRepository(UserEntity)
        private userRepository: Repository<UserEntity>,

    ) { }

    async getAll(): Promise<UserEntity[]> {
        return await this.userRepository.find({});
    }
    async create(user: UserRegister): Promise<UserEntity> {
        const hashPw = await bcrypt.hash(user.password, 10);
        const email = this.userRepository.findOne({ email: user.email });
        if (email) {
            throw new NotFoundException('Email đã tồn tại!!!');
        }
        const name = this.userRepository.findOne({ userName: user.userName });
        if (name) {
            throw new NotFoundException('Tên đăng nhập đã tồn tại!!!');
        }
        const userCreate = this.userRepository.create({
            email: user.email,
            userName: user.userName,
            password: hashPw
        })
        return await this.userRepository.save(userCreate);

    }
}
