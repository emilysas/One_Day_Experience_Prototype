# One_Day_Experience_Prototype
This is a project for [One Day from openIDEO](https://openideo.com/challenge/youth-employment-pathways/ideas/one-day).

##What does it do?
It connects young people searching for a job inspiration with professionals that are ready to share their passion for a one-day in-work experience

##Live Version
[hosted on heroku](https://one-day-project.herokuapp.com/)*
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

To use the facebook login we have some env vars that are local, you can use yours if you want to run this, the vars are: `FACEBOOK_APP_ID` and  `FACEBOOK_APP_SECRET` .