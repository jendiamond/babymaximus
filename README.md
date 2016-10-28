# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

---

```
rails g scaffold User

rails g scaffold Day week:integer date:datetime notes:text

rails g scaffold Feeding day:references feeding_time:datetime left:boolean right:boolean minutes:integer feeding_type:string feeding_amount:integer notes:text

rails g scaffold Pump day:references pump_time:datetime pump_amount:integer notes:text

rails g scaffold Diaper day:references diaper_type:string notes:text

rails g scaffold Sleep day:references sleep_start:datetime sleep_end:datetime notes:text

rails g scaffold TummyTime day:references tummy_time:integer notes:text

rails g scaffold Bath day:references bath:boolean notes:text
```

https://www.youtube.com/watch?v=T0lcUENA8zs
