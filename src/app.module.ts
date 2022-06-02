/* eslint-disable prettier/prettier */
import { Module } from '@nestjs/common';
import { SharedModule } from './api/shared.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [
    SharedModule,
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'database-1.cyvv3bn15rgc.us-east-1.rds.amazonaws.com',
      port: 3306,
      username: 'admin',
      password: 'Hackco2909',
      database: 'ecommerceandroid',
      entities: [__dirname + '/**/*.entity{.ts,.js}'],
      synchronize: true,
      autoLoadEntities: true,
      ssl: {
        rejectUnauthorized: false,
      },
    }),
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'uploads'),
    }),

  ],

  controllers: [],
  providers: [],
})

export class AppModule { }
