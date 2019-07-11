class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  validates :title, presence: true, length: {in: 5..100}
  validates :body, presence: true
  validates :user_id, presence: true
end
