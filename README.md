# テーブル設計

## users テーブル

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| name                | string  | null: false |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false |

### Association

- has_many :cars

## cars テーブル

| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| car_model       | string     | null: false |
| number          | text       | null: false |
| total_mileage   | integer    | null: false |
| monthly_mileage | integer    | null: false |
| user            | references | null: false, foreign_key: true |

### Association

- has_many :maintenances
- has_many :remainders

## maintenances テーブル

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| maintenance_type    | string     | null: false |
| performed_at        | datetime   | null: false |
| mileage             | integer    | null: false |
| cost                | integer    | null: false |
| car                 | references | null: false, foreign_key: true |

### Association

- belongs_to :car

## reminders テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| maintenance_type | string     | null: false |
| next_due_at      | integer    | null: false |
| car              | references | null: false, foreign_key: true |

### Association

- belongs_to :car