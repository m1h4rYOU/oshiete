## App Name
料理講師に質問できるレシピサイト”教えて、先生！”

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

### Teacher Account for Test
ID: teacher1@mail.com  
PW: test111111  

### User Account for Test
ID: user1@mail.com  
PW: test222222 

## Requirement Definitions

### ○○機能
#### :pushpin:Function

#### :pencil2:Purpose

#### :books:Story
- 
-------

## Tables
### users table

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| u_nickname | string  | null: false |
| u_email    | string  | null: false |
| u_password | string  | null: false |

#### Association
- has_many :comments

### teachers table

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| t_nickname | string  | null: false |
| t_email    | string  | null: false |
| t_password | string  | null: false |

#### Association
- has_many :recipes
- has_many :comments

### recipes table

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| teacher   | references | null: false, foreign_key: true |
| dish_name | string     | null: false                    |
| genre_id  | integer    | null: false                    |
| detail    | text       | null: false                    |

#### Association
- belongs_to :teachers
- has_many :comments
- belongs_to_active_hash :genre

### comments table
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| teacher | references | null: false, foreign_key: true |
| recipe  | references | null: false, foreign_key: true |
| title   | string     | null: false                    |
| detail  | text       | null: false                    |

#### Association
- belongs_to :users
- belongs_to :teachers
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