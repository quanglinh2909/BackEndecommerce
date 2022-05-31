/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { TagParentEntity } from "./tag-parent.entity";

@Entity()
export class TagChildEntity {
    @PrimaryGeneratedColumn()
    id: number

    @Column({ type: 'nvarchar', length: 255 })
    name: string

    @Column({ type: 'int' })
    code: number

    @ManyToOne(() => TagParentEntity, (tag) => tag.id)
    idTagParent: TagParentEntity;
}