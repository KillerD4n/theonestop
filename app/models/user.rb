class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence:true, uniqueness:true
  validates :age, presence: true
  validates :username, presence:true, uniqueness: true
  validates :password, presence: true
  has_many :sessions
end
