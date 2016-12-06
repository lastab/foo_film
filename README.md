# FooFilm
----

## Requirements
* Ruby[2.3.1]
* Rails[4.2.6]

## Run Server

```
bundle exec rails server
```

[http://localhost:3000](http://localhost:3000)


## Heroku URL
[https://foofilm.herokuapp.com](https://foofilm.herokuapp.com)


## Run Test
```
bundle exec rspec
```

## Architecture
* Controller films_controller.rb
* View index.html.erb
* Json and xml format does not use view templates
* Rspec is used for testing
* Test is located in spec/controllers/films_controllers_spec.rb
