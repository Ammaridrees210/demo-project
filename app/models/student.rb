class Student < ApplicationRecord
  has_secure_password
  has_many :books, dependent: :destroy

  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, massage: "Must be valid email" }
  validates :password, presence: true
    
end
