module.exports = {
  apps: [
    {
      name: 'api',
      cwd: '/home/ubuntu/unikall_backend',
      script: 'yarn develop',
      env: {
        NODE_ENV: 'development',
        DATABASE_HOST: 'unikall.cyiqhphpjo7v.ca-central-1.rds.amazonaws.com',
        DATABASE_PORT: '3306',
        DATABASE_NAME: 'unikall',
        DATABASE_USERNAME: 'nokoarts',
        DATABASE_PASSWORD: 'n0k04rt5',
      },
    },
  ],
};
