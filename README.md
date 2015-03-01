# One_Day_Experience_Prototype

[![Code Climate](https://codeclimate.com/github/emilysas/One_Day_Experience_Prototype/badges/gpa.svg)](https://codeclimate.com/github/emilysas/One_Day_Experience_Prototype) [![Test Coverage](https://codeclimate.com/github/emilysas/One_Day_Experience_Prototype/badges/coverage.svg)](https://codeclimate.com/github/emilysas/One_Day_Experience_Prototype)


This is a project for [One Day from openIDEO](https://openideo.com/challenge/youth-employment-pathways/ideas/one-day).

##What does it do?
It connects young people searching for a job inspiration with professionals that are ready to share their passion for a one-day in-work experience

##Live Version
[hosted on heroku](https://one-day-xp.herokuapp.com/)*
*will be updated soon

##Get it up and running
`git clone git@github.com:emilysas/One_Day_Experience_Prototype.git`  
`cd One_Day_Experience_Prototype`  
`bundle install`  
At this point make sure postgreSQL is up & running  
`rake db:create db:migrate`  
go to `localhost:3000`  
Done!

Optional:
to get some extra data we've included a seed file, use like:
`rake db:seed`

##For app owners
*Please make sure to delete these files before proceeding*
 `rm public/assets/application-*`
 
*You will need to recompile them if deploying to heroku*
`rake assets:precompile`
Note: this is a quick fix and will be changed asap

###In order to run this application, there are a set of environment variables that need to be set:

* For your AWS bucket/photo storage the following must be completed with your own data:
`export AWS_ACCESS_KEY_ID=""`  
`export AWS_SECRET_ACCESS_KEY=""`  
`export S3_BUCKET_NAME=""`  
You will have to make an AWS account and bucket.
Failure to do so will result in you not being able to store any photo.

* To use the facebook login (you can use yours if you want to run this): 
`FACEBOOK_APP_ID`  
`FACEBOOK_APP_SECRET`
