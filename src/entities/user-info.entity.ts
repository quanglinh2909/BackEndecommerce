/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { UserEntity } from "./user.entity"

@Entity()
export class UserInfoEntity {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => UserEntity, (user) => user.id)
    idUser: UserEntity

    @Column({ type: 'nvarchar', length: 12 })
    telephone: string

    @Column({ type: 'nvarchar', length: 255 })
    fullName: string

    @Column({ type: 'nvarchar', length: 255 })
    address: string

    @Column({ type: 'nvarchar', length: 255 })
    province: string

    @Column({ type: 'nvarchar', length: 255 })
    district: string

    @Column({ type: 'nvarchar', length: 255 })
    ward: string

    @Column({ type: 'nvarchar', length: 255 })
    typeAddress: string

    @Column({ type: 'int' })
    default: number

    @Column({ type: 'int' })
    sex: number

}
//id, iduser, age, sex, telephone, firstname, lastname