/* eslint-disable prettier/prettier */
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm"

@Entity()
export class LocalBranchEntity {
    @PrimaryGeneratedColumn()
    id: number

    @Column({ type: 'nvarchar', length: 255 })
    name: string
    
    @Column({ type: 'nvarchar', length: 255 })
    description: string
    
    @Column({ type: 'nvarchar', length: 255 })
    image: string

   
}
//idLocalBranch,name, description,image