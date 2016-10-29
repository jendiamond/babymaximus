# baymaximus

* Rails version 5.0.0

* Ruby version 3.2

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

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

### Nested forms

+ https://github.com/plataformatec/simple_form
+ https://github.com/plataformatec/simple_form#buttons

+ https://github.com/plataformatec/simple_form/wiki/Nested-Models
+ http://stackoverflow.com/questions/19347450/creating-multiple-nested-forms-using-simple-form-and-rails-4
+ http://stackoverflow.com/questions/10606619/nested-rails-forms-with-simple-form
+ https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms

```ruby
<%= f.simple_fields_for :friend_birthdays do |friend_birthday| %>
  <%= friend_birthday.input :name %>
  <%= friend_birthday.input :gender, :collection => ['male','female'] %>
<% end %>
```

```ruby
class Machine < ActiveRecord::Base
      has_many :parts , inverse_of: :machine
      accepts_nested_attributes_for :parts
    end
```

```ruby
<%= simple_form_for @machine do |m| %>
  <%= m.simple_fields_for :parts do |p| %>
    <%= p.input :name %>
  <% end %>
<% end %>
```

```ruby
  def new
    @machine = Machine.new
    @machine.parts.build
  end
  ```

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
