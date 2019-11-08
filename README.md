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

## Database
To create the database:
```shell
$ rake db:create
```