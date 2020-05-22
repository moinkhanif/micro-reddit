class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  private_constant :VALID_EMAIL_REGEX
  validates :name, presence: true
  validates :username, presence: true, length: { in: 3..10 }
  validates :email,
            presence: true,
            format: {
              with: VALID_EMAIL_REGEX,
              message: 'Enter a valid e-mail address.'
            }
  has_many :posts
  has_many :comments
end
