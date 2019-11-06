# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## users_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index :true|
|email|text|null: false, unique: true|
|password|text|null: false|

### Association

- has_many :messages
- has_many :groups_users
- has_many :groups, through: :groups_users

## groups_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association

- has_many :messages
- has_many :groups_users
- has_many :users, through: :groups_users

## messages_table

|Column|Type|
|------|----|
|body|text|
|image|string|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :group

groups_users_table

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :group

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
