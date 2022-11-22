require('dotenv').config();

module.exports = {
  development: {
    username: process.env.POSTGRES_USER || 'postgres',
    password: process.env.POSTGRES_PASSWORD || null,
    database: process.env.POSTGRES_DB_NAME || 'produce_development',
    host: process.env.POSTGRES_DB_HOST || '127.0.0.1',
    dialect: 'postgres',
    seederStorage: 'sequelize',
  },
  test: {
    username: process.env.POSTGRES_USER || 'postgres',
    password: process.env.POSTGRES_PASSWORD || null,
    database: process.env.POSTGRES_DB_NAME || 'produce_test',
    host: process.env.POSTGRES_DB_HOST || '127.0.0.1',
    dialect: 'postgres',
    logging: false,
  },
  production: {
    use_env_variable: 'DATABASE_URL',
  },
};