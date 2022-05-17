/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"

@Entity()
export class ConlectionEntity {
    @PrimaryGeneratedColumn()
    id: number

    @Column({ type: 'nvarchar', length: 255 })
    name: string

    @Column({ type: 'text'})
    description: string

}
//idCollection,name, description