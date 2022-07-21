/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, CreateDateColumn } from "typeorm"
import { ColorProductEntity } from "./color-product.entity"
import { OrderEntity } from "./oder.entity"
import { ProductEntity } from "./product.entity"
import { UserEntity } from "./user.entity"

@Entity()
export class OrderDetailEntity {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => ProductEntity, (pro) => pro.id)
    idProduct: ProductEntity

    @ManyToOne(() => OrderEntity, (color) => color.id)
    idOrder: OrderEntity

    @Column({ type: 'float' })
    price: number

    @Column({ type: 'int' })
    quantity: number

    @Column({ type: 'nvarchar', length: 255 })
    size: string

    @CreateDateColumn()
    altDelete: Date

}
//idOder,idProduct,size,idColor,price,quantity