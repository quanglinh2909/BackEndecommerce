/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column } from "typeorm"

@Entity()
export class UserEntity {
    @PrimaryGeneratedColumn()
    id: number

    @Column({ type: 'nvarchar', length: 255 })
    userName: string

    @Column({ type: 'nvarchar', length: 255 })
    email: string

    @Column({ type: 'nvarchar', length: 500 })
    token: string

    @Column({ type: 'int' })
    role: number

    @Column({ type: 'nvarchar', length: 255 })
    password: string
}