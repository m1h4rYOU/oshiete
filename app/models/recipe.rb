class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  # 空の投稿を保存できないようにする
  with_options presence: true do
    validates :dish_name
    validates :image
    validates :ingredient
    validates :detail
  end

  # ジャンルの選択が「--」の時は保存できないようにする
  validates :genre_id, numericality: { other_than: 1 }

  belongs_to :user
  has_many :questions
  has_one_attached :image
end
