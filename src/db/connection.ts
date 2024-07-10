import { Sequelize } from 'sequelize' 

const sequelize = new Sequelize(process.env.DATABASE_NAME || 'almacen', process.env.DATABASE_USER || 'postgres', process.env.DATABASE_PASS || 'Celina$957', {
    host: process.env.DATABASE_HOST || 'localhost',
    dialect: 'postgres'
  });


export default sequelize;