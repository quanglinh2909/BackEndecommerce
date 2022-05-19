/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { ProductEntity } from "./product.entity";

@Entity()
export class DescriptionEntity {
    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => ProductEntity, (pro) => pro.id)
    idProduct: ProductEntity;

    @Column({ type: 'nvarchar', length: 255 })
    title: string

    @Column({ type: 'text'})
    description: string

}
//(idDescription,idProduct,title, description