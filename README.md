# Node Express Passport.js Atlassian Example


### Set up postgres

1. heroku addons:create heroku-postgresql:hobby-dev
2. heroku config
3. Copy the POSTGRES_URL to .env file
4. Connect to db and import the users table in db.sql file


## Set up Atlassian Application

1. Create or use existing atlassian app from developer https://developer.atlassian.com/apps/
2. Enable oauth access grants in the atlassian app you created. Here is the official documentation: https://developer.atlassian.com/cloud/jira/platform/oauth-2-authorization-code-grants-3lo-for-apps/#enabling-oauth-2-0-authorization-code-grants
3. Copy app id and secret to environment variables
  i. Put env variables in .env file
  ii. Set up deployment (heroku in this example) env variables
4. Set up redirect urls in the app in AtlassianStrategy object config
5. Add the callback urls to atlassian app's whitelisted redirect urls


### Env File

You need to create and place all configuration about your database, atlassian app details in .env file or in your target platform's environment variables. The env file or variables listed below:

```
DATABASE_URL=postgres://...
ATLASSIAN_CLIENT_ID=9d024....
ATLASSIAN_CLIENT_SECRET=082fd...
ATLASSIAN_CALLBACK_URL=https://...
```

### Run

1. npm install
2. node index.js


### Deploy on heroku

1. git init
2. heroku login
3. heroku create
4. git push heroku master