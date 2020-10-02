class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  
  # 空の投稿を保存できないようにするx
    with_options presence: true do
      validates :dish_name
      validates :image
      validates :detail
    end

  # 各選択が「---」の時は保存できないようにする
  validates :genre_id, numericality: { other_than: 1 }

  belongs_to :user
  has_many :comment
  has_one_attached :image

end
