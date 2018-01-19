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

* ...


-- Create database --
mysql> create database bookstore_development;
mysql> create database bookstore_test;

-- Create users --
mysql> CREATE USER 'bookstore'@'localhost' IDENTIFIED BY 'bookstore';


-- Grant privileges

mysql> grant all on bookstore_development.* to 'bookstore'@'localhost';
mysql> grant all on bookstore_test.* to 'bookstore'@'localhost';
mysql> FLUSH PRIVILEGES;


2º Install mysql lib

apt-get install libmysqlclient-dev

3º gem install mysql2

4º sudo gem install therubyracer

5º sudo gem install execjs

6º sudo gem install libv8 --version=3.11.8.3

7º Into the configuration file Gemfile
 
  7.1 Uncomment gem 'mysql2'
  7.2 Comment #gem 'sqlite3'

8º Change configuration files

default: &default
  adapter: mysql2
  pool: 5
  timeout: 5000

development:
  <<: *default
  adapter: mysql2
  database: bookstore_development
  username: bookstore
  password: bookstore

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  adapter: mysql2
  database: bookstore_development
  username: bookstore
  password: bookstore
