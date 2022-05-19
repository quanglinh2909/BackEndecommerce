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
    firstname: string
    
    @Column({ type: 'nvarchar', length: 255 })
    lastname: string

    @Column({ type: 'nvarchar', length: 255 })
    address: string
}
//id, iduser, age, sex, telephone, firstname, lastname