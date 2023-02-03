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
### `api/v1/shorten_urls/encode`

**Request**:

```bash
curl --location --request POST 'https://shorten-url-app.fly.dev/api/v1/shorten_urls/encode?original_url=https://shorten-url-app.fly.dev/api/v1/shorten_url/encode?original_url'
```

**Response**:
```bash
{ "url": "http://short.est/2sWGXg" }
```
    
### `api/v1/shorten_urls/decode`

**Request**:

```bash
curl --location --request GET 'https://shorten-url-app.fly.dev/api/v1/shorten_urls/decode?short_url=http://short.est/2sWGX
```

**Response**:
```bash
{ "url": "https://shorten-url-app.fly.dev/api/v1/shorten_url/encode?original_url" }
```

## Test and Deploy

Use the built-in continuous integration in Fly.io.
* Domain: https://shorten-url-app.fly.dev/api/v1/shorten_urls/
### Running specs

```sh
# Default: Run all spec files (i.e., those matching spec/**/*_spec.rb)
$ bundle exec rspec

# Run all spec files in a single directory (recursively)
$ bundle exec rspec spec/requests
```