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
