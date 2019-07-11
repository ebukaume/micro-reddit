class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  has_many :posts
  has_many :comments
  
  validates :username, presence: true, length: {in: 3..20}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}
end
