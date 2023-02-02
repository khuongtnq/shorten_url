# README

Shorten url demo

* Ruby version
    * 3.0.0
* Rails version
    * 7.0.4.2
* How to run (without Docker)
    * Install ruby (macos)
  ```
    brew install rbenv
    rbenv install 3.0.0
    rbenv global 3.0.0
    rbenv rehash
    ruby -v
  ```
    * Preparation
  ```
    gem install bundler
    bundler install
  ```
    * Install PostgreSQL manually
    * Use/Change db connection credentials in config/database.yml
  ```
  # first time run
  rails db:create
  # if have new migrations
  rails db:migrate
  # drop db
  rails db:drop
  ```
    * Start server
  ```
  rails server
  ```
    * Interactive shell
  ```
  rails console
  ```
    * Looking for api docs? Go to /swagger
### `api/v1/encode`
    
### `api/v1/decode`