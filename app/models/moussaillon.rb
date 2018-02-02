class Moussaillon < ApplicationRecord
  validates :pseudo, presence: true, length: { maximum: 50 },
             uniqueness: true
  validates :email, presence: true, length: { maximum: 255 },
             VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
             format: { with: VALID_EMAIL_REGEX }
  validates :biographie, presence: true, length: { minimum: 5 }
end
