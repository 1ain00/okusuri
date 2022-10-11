## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |


## Association
- has_many :medicines
- has_many :medicinelists


## medicines テーブル

| Column     | Type     | Options    |
| ---------- | -------- | ---------- |
| name       | string   |            |
| number     | string   |            |
| memo       | text     |            |
| start_time | datetime | null:false |



## Association
- belongs_to :user


## medicines テーブル

| Column    | Type    | Options                   |
| --------- | ------- | ------------------------- |
| name      | string  | null:false                |
| number    | string  | null:false                |
| memo      | text    |                           |
| timing_id | integer | null:false                |
| done      | boolen  | null: false, unique: true |




## Association
- belongs_to :user

