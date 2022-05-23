/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { ProductEntity } from "./product.entity"

@Entity()
export class ColorProductEntity {
    @PrimaryGeneratedColumn()
    id: number

    // @ManyToOne(() => ProductEntity, (product) => product.id)
    // idProduct: ProductEntity

    @Column({ type: 'nvarchar', length: 255 })
    name: string

    @Column({ type: 'int' })
    stock: number

    @Column({ type: 'nvarchar', length: 255 })
    codeColor: string
}
//idColor,idProduct,nameColor,stock