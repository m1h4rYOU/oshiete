## App Name
料理講師に質問できるレシピサイト”教えて！料理先生”

## Outlines
レシピがあっても、レシピ通りにならない  
レシピだけでは、少し理解ができない等といった場合でも、  
レシピ考案している料理講師に直接質問ができるレシピサイトです。  

## App URL
https://oshiete.herokuapp.com/

## Accounts for Tests
### Basic Authentication
ID: oshiete  
PW: 1111  

### User Account for Test
ID: user1@email.com  
PW: test1111  

## Requirement Definitions

### ○○機能
#### :pushpin:Function

#### :pencil2:Purpose

#### :books:Story
- 
-------

## Tables
### users table

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |

#### Association
- has_many :comments

### recipes table

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| dish_name  | string     | null: false                    |
| genre_id   | integer    | null: false                    |
| ingredient | text       | null: false                    |
| detail     | text       | null: false                    |

#### Association
- has_many :comments
- belongs_to_active_hash :genre

### comments table
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| recipe  | references | null: false, foreign_key: true |
| title   | string     | null: false                    |
| detail  | text       | null: false                    |

#### Association
- belongs_to :users
- belongs_to :recipes

## Usage on Your Local
### Ruby version
ruby 2.6.5  
### Please Execute Following Commands
% git clone https://github.com/we-b/oshiete.git  
% cd oshiete  
% bundle install  
% yarn install  
% rails db:create  
% rails db:migrate  
% rails s  
:point_right: http://localhost:3000  