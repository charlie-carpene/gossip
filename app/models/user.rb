class User < ApplicationRecord
  has_secure_password
  has_many :potins
  has_many :comments

  validates :first_name,
    presence: true

  validates :last_name,
    presence: true

  validates :description,
    presence: true

  validates :origin,
    presence: true

  validates :age,
    presence: true

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
end
