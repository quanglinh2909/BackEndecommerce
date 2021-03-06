/* eslint-disable prettier/prettier */
import { UserLogin, UserRegister } from '@/dto/user.dto';
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
        const email = await this.userRepository.findOne({ email: user.email });
        if (email) {
            throw new NotFoundException('Email đã tồn tại!!!');
        }
        const name = await this.userRepository.findOne({ userName: user.userName });
        if (name) {
            throw new NotFoundException('Tên đăng nhập đã tồn tại!!!');
        }
        const userCreate = await this.userRepository.create({
            email: user.email,
            userName: user.userName,
            password: hashPw
        })
        return await this.userRepository.save(userCreate);

    }
    async login(userLogin: UserLogin): Promise<UserEntity> {
        const user = await this.userRepository
            .createQueryBuilder('user_entity')
            .where('user_entity.userName = :userName', { userName: userLogin.userName })
            .orWhere('user_entity.email = :email', { email: userLogin.email })
            .getOne();
        // console.log(user);

        if (!user) {
            throw new NotFoundException('Email không tồn tại!!!');
        }
        const checkPw = await bcrypt.compare(userLogin.password, user.password);
        if (!checkPw) {
            throw new NotFoundException('Mật khẩu không đúng!!!');
        }
        return user;
    }
}
