## App Name
料理講師に質問できるレシピサイト”教えて！料理先生”

## Outlines
レシピがあっても、レシピ通りにならない  
レシピだけでは、少し理解ができない等といった場合でも、  
レシピ考案している料理講師に直接質問ができるレシピサイトです。  

## App URL
https://oshiete-cooking-teacher.herokuapp.com/

## Accounts for Tests
### Basic Authentication
ID: oshiete  
PW: 1111  

### User Account for Test1
Nick Name: おにぎり  
ID: user1@email.com  
PW: test1111  

### User Account for Test2
Nick Name: 焼きそば  
ID: user2@email.com  
PW: test2222  

## Requirement Definitions

### ユーザー管理機能
#### :pencil2:Purpose
ユーザー登録を可能にする  
#### :books:Story
- 新規ユーザー登録
-------
### レシピ詳細表示機能
#### :pencil2:Purpose
レシピの詳細を表示可能にする  
#### :books:Story
- トップ画面の“新着レシピ”レシピ詳細画面より、内容に変更、修正ができる  
-------
### レシピ作成機能
#### :pencil2:Purpose
レシピを作成可能にする  
#### :books:Story
- レシピを新規作成することができる（講師アカウントと一般ユーザーアカウントで区別予定）
-------
### レシピ編集機能
#### :pencil2:Purpose
レシピを編集可能にする  
#### :books:Story
- レシピ詳細画面より、内容に変更、修正ができる  
-------
### レシピ削除機能
#### :pencil2:Purpose
レシピを削除可能にする  
#### :books:Story
- レシピ詳細画面より、レシピを削除できる  
-------

## Progressing functions

### レシピ内容質問機能
#### :pencil2:Purpose
料理講師と質問があるユーザーがレシピ毎に質問することが可能  
#### :books:Story
- 料理講師と質問があるユーザーがレシピ毎に質問ができる  
-------
### SNS認証
#### :pencil2:Purpose
SNSアカウント（Googleアカウン、Facabookアカウント）を利用したログイン方法を選択肢として追加し、ユーザーアカウント登録方法の選択肢を増やす  
#### :books:Story
- ユーザーアカウントの登録方法を「手打ち入力」「Googleアカウントを利用」「Facabookアカウントを利用」の3つから選べるようにする
- SNSアカウントを選択した場合、既にパスワードは入力されてる状態で表示される
-------
### レシピ一覧機能
#### :pencil2:Purpose
カテゴリー毎のレシピ一覧を閲覧可能  
#### :books:Story
- 本アプリでは、カテゴリー毎にレシピが分類されている為  
-------
### 検索機能
#### :pencil2:Purpose
ユーザーが簡単にレシピ検索出来るようにする  
#### :books:Story
- レシピは数点掲載されていることが前提  
- レシピ名/カテゴリー/材料などの検索条件を指定する欄を儲ける  
- 条件に該当するレシピの検索結果のページで表示する  
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
% git clone https://git.heroku.com/oshiete-cooking-teacher.git
% cd oshiete  
% bundle install  
% yarn install  
% rails db:create  
% rails db:migrate  
% rails s  
:point_right: http://localhost:3000  