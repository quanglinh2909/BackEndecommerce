/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, PrimaryColumn, CreateDateColumn, DeleteDateColumn } from "typeorm"
import { ColorProductEntity } from "./color-product.entity"
import { LocalBranchEntity } from "./local-branch.entity"
import { TagChildEntity } from "./tag-child.entity"
import { TagParentEntity } from "./tag-parent.entity"

@Entity()
export class ProductEntity {
    @PrimaryColumn()
    id: string

    @ManyToOne(() => LocalBranchEntity, (branch) => branch.id)
    idlocalbranch: LocalBranchEntity

    // @ManyToOne(() => ColorProductEntity, (con) => con.id)
    // idColection: ColorProductEntity

    @ManyToOne(() => TagParentEntity, (tag) => tag.id)
    idParent: TagParentEntity

    @Column({ type: 'nvarchar', length: 255 })
    name: string

    @Column({ type: 'float' })
    price: number

    @Column({ type: 'int' })
    S: number

    @Column({ type: 'int' })
    M: number

    @Column({ type: 'int' })
    L: number

    @Column({ type: 'int' })
    XL: number

    @Column({ type: 'float' })
    rating: number

    @Column({ type: 'int' })
    sale: number

    @CreateDateColumn()
    createdAt: Date

    @DeleteDateColumn()
    DeleteAt: Date;
}
//idProduct,idlocalbranch,name,price,S,M,L,XL,idColection, idTagChild