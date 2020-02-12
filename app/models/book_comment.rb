class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  # コメントの空欄を禁止
  validates :comment, presence: true
end
