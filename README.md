## bbq 
Another name of app is Barbeque.

### Description
This app was created in training course, where after registration you can create yours own events, attach photos, make comments, restrict access with pincode. You can watch any other events, comment them, attach photo, subscribe to them. Subscribe and comments without registration is possible also.

Authentication with gem pundit

Uploading photo with gems carrierwave, rmagick. For comfortable viewing photo is using light box

Subscribers receive email letter using postfix

Event places are displayed on the Yandex map

For store photo is using cloud servise AWS with bucket S3

App is deployed to server Digital Ocean

### Launch
1. Download or clone ropository

2. Use your own credentials as in examples
```
$ cp config/database.yml.example config/database.yml
$ cp config/secrets.yml.example config/secrets.yml
$ cp .env.example .env
```
3. Use bundle
```
$ bundle
```

4. Create Data Base
```
$ bundle exec rails db:create
```
5. Run database migrations
```
$ bundle exec rails db:migrate
```
6. To populate database with seed data run
```
$ bundle exec rails db:seed
```
### Deploy
**bbq app** can be deploying to Heroku. 

For correct work on Heroku URL must be changed in **config/environments/production.rb**
Also must be changed configuration fo mailing SendGrid

### Demo Heroku

http://https://visitbbq.herokuapp.com/

