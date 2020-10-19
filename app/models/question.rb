class Question < ApplicationRecord
  # 空の投稿を保存できないようにする
  with_options presence: true do
    validates :text, length: { in: 1..1000 }
  end

  has_many :users
  belongs_to :recipe
end
