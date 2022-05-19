/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, CreateDateColumn } from "typeorm"
import { ColorProductEntity } from "./color-product.entity"
import { ProductEntity } from "./product.entity"
import { UserEntity } from "./user.entity"

@Entity()
export class OrderEntity {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => UserEntity, (user) => user.id)
    idUser: UserEntity

    @Column({ type: 'float' })
    total: number

    @Column({ type: 'number' })
    status: number
    
    @CreateDateColumn()
    oderDate: Date

}
//idOder, idUser,status,oderDate,total