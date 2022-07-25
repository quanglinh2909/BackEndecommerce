/* eslint-disable prettier/prettier */
import { Entity, Column, ManyToOne, PrimaryColumn, CreateDateColumn, DeleteDateColumn, PrimaryGeneratedColumn } from "typeorm"
import { OrderEntity } from "./oder.entity"
import { UserEntity } from "./user.entity"

@Entity()
export class NotyficationEntity {
    @PrimaryGeneratedColumn()
    id: string

    @ManyToOne(() => UserEntity, (branch) => branch.id)
    idUser: UserEntity

    @ManyToOne(() => OrderEntity, (branch) => branch.id)
    idOrder: OrderEntity

    @Column({ type: 'nvarchar', length: 255 })
    title: string

    @Column({ type: 'nvarchar', length: 255 })
    mess: string

    @Column({ type: 'int' })
    type: number

    @Column({ type: 'int' })
    status: number

    @CreateDateColumn()
    createdAt: Date

    @DeleteDateColumn()
    DeleteAt: Date;
}
