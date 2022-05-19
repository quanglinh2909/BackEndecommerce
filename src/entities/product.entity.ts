/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { ColorProductEntity } from "./color-product.entity"
import { LocalBranchEntity } from "./local-branch.entity"
import { TagChildEntity } from "./tag-child.entity"

@Entity()
export class ProductEntity {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => LocalBranchEntity, (branch) => branch.id)
    idlocalbranch: LocalBranchEntity

    @ManyToOne(() => ColorProductEntity, (con) => con.id)
    idColection: ColorProductEntity

    @ManyToOne(() => TagChildEntity, (tag) => tag.id)
    idTagChild: TagChildEntity

    @Column({ type: 'nvarchar', length: 255 })
    name: string
    
    @Column({ type: 'float' })
    price: number
    
    @Column({ type: 'number' })
    S: number

    @Column({ type: 'number' })
    M: number

    @Column({ type: 'number' })
    L: number

    @Column({ type: 'number' })
    XL: number

}
//idProduct,idlocalbranch,name,price,S,M,L,XL,idColection, idTagChild