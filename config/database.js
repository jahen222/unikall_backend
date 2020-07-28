module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        //host: "${process.env.DATABASE_HOST || '127.0.0.1'}",
        //port: "${process.env.DATABASE_PORT || 3306}",
        //database: "${process.env.DATABASE_NAME || 'unikall'}",
        //username: "${process.env.DATABASE_USERNAME || 'nokoarts'}",
        //password: "${process.env.DATABASE_PASSWORD || 'n0k04rt5'}",
        //ssl: "${process.env.DATABASE_SSL || 'false'}"
        host: env('DATABASE_HOST', 'unikall.cyiqhphpjo7v.ca-central-1.rds.amazonaws.com'),
        port: env.int('DATABASE_PORT', 3306),
        database: env('DATABASE_NAME', 'unikall'),
        username: env('DATABASE_USERNAME', 'nokoarts'),
        password: env('DATABASE_PASSWORD', 'n0k04rt5'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },
  },
});

