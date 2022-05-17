/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column } from "typeorm"

@Entity()
export class TagParentEntity {
    @PrimaryGeneratedColumn()
    id: number

    @Column({ type: 'nvarchar', length: 255 })
    name: string
}