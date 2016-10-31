# baymaximus

* Rails version 5.0.0

* Ruby version 3.2

* Database Postgres

---


```ruby
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

---

### Create methods for:

```ruby
def time_between_feedings
end
```
```ruby
def total_feeding_time_per_day
end
```
```ruby
def total_feeding_time_per_week
end
```
```ruby
def total_feeding_time_per_month
end
```
```ruby
def total_feeding_time_per_day
end
```
```ruby
def total_feeding_time_per_week
end
```
```ruby
def total_feeding_time_per_month
end
```
```ruby
def total_diapers_per_day
end
```
