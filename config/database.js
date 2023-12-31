module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', 'localhost'),
         port: env.int('DATABASE_PORT', 3306),
         database: env('DATABASE_NAME', 'unikall'),
         username: env('DATABASE_USERNAME', 'root'),
         password: env('DATABASE_PASSWORD', ''),
         ssl: env.bool('DATABASE_SSL', false),
         //host: env('DATABASE_HOST', 'unikall.cyiqhphpjo7v.ca-central-1.rds.amazonaws.com'),
         //port: env.int('DATABASE_PORT', 3306),
         //database: env('DATABASE_NAME', 'unikall'),
         //username: env('DATABASE_USERNAME', 'nokoarts'),
         //password: env('DATABASE_PASSWORD', 'n0k04rt5'),
         //ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },
  },
});

