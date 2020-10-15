class Question < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  + belongs_to :parent,  class_name: "Question", optional: true
  + has_many   :reply, class_name: "Question", foreign_key: :parent_id, dependent: :destroy

  validates :content, presence: true, length: { in: 1..1000 }

end
