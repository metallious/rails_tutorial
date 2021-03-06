# README

## Initial setup
To create api call
```shell
$ rails new api_name --api
```

After adding gems in the Gemfile. they can be fetched using
```shell
$ bundle install
```

## Models
To create a model
```shell
$ rails g scaffold User name:string
```
#### Reference model
To create a model that belongs to another model
```shell
$ rails g scaffold Post user:references title:text body:text
```
a model can have multiple references

It's possible to create a one to many relationship by adding `has_many` to the model.

## Database
To create the database:
```shell
$ rake db:create
```

To migrate database:
```shell
$ rake db:migrate
```

To feed database with dev data
```shell
$ rake db:seed
```

If a db change is needed a migration can be created using
```shell
$ rails g migration change_something_to_be_something_else
```
The migration file might resemble this
```ruby
class ChangeSomethingToBeSomethingElse < ActiveRecord::Migration[5.0]
  def change
    change_column :customers, :phone, :string
  end
end
```
for a rollback enabled migration it's possible to use `up`/`down` instead of `change` to 
be used with `db:migrate` and `db:rollback`.

## Routes
Under config/routes.rb is a list of exposed http routes

## Service Objects
Service Objects are reusable controllers, every Service Object deals with a single concern and performs a specific job. A gem like `simple_command` can be used for this matter.

## Accessors
- `attr_accessor`: creates both reader and writer
- `attr_reader`: creates reader only
- `attr_writer`: creates writer only

can be used as follows
```ruby
attr_reader :some_attr
```

## Filters
Filters are methods that are run before, after or around a controller action. They are inherited so if a 
filter is set on the ApplicationController level it will run on every controller in the application.

Example of filters `before_action`, `after_action`, `around_action` which uses two methods `before(contorller)` and `after(controller)`

The before filter may halt the request cycle, or redirect to a different workflow.

Filters can be skipped by controllers using `skip_before_action`, `skip_after_action` and `skip_around_action`

A use-case of filters is to make sure a user is authenticated
