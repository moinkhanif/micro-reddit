class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true
  validates :username, presence: true, length: { in: 3..10 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX, 
    message: 'Enter a valid e-mail address.'}
  has_many :posts
end
