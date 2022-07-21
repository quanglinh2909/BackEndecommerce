/* eslint-disable prettier/prettier */
import { userInfo } from "os"
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, CreateDateColumn } from "typeorm"
import { ColorProductEntity } from "./color-product.entity"
import { ProductEntity } from "./product.entity"
import { UserInfoEntity } from "./user-info.entity"
import { UserEntity } from "./user.entity"

@Entity()
export class OrderEntity {
    @PrimaryGeneratedColumn('uuid')
    id: string

    @ManyToOne(() => UserEntity, (user) => user.id)
    idUser: UserEntity

    @ManyToOne(() => UserInfoEntity, (user) => user.id)
    idAddress: UserInfoEntity

    @Column({ type: 'float' })
    total: number

    @Column({ type: 'int' })
    status: number

    @CreateDateColumn()
    oderDate: Date

}
//idOder, idUser,status,oderDate,total