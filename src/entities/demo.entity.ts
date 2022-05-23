/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"
import { ColorProductEntity } from "./color-product.entity"
import { UserEntity } from "./user.entity"


@Entity()
export class DemoEntity {
    @PrimaryGeneratedColumn()
    id: number

    // @ManyToOne(() => ProductEntity, (product) => product.id)
    // idProduct: ProductEntity

    @ManyToOne(() => UserEntity, (user) => user.id)
    idUser: UserEntity

    @ManyToOne(() => ColorProductEntity, (color) => color.id)
    idColor: ColorProductEntity

    @Column({ type: 'int' })
    quantity: number


    @Column({ type: 'nvarchar', length: 255 })
    size: string

}
//idCart,IdUser,IdProduct, amount,size,idColor