/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { ProductEntity } from "./product.entity";

@Entity()
export class ImageEntity {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => ProductEntity, (pro) => pro.id)
    idProduct: ProductEntity;

    @Column({ type: 'nvarchar', length: 255 })
    url: string


}
//idProduct, url