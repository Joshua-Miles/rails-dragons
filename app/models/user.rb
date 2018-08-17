class User < ApplicationRecord
  has_many :dragons
  validates :name, presence: true
  validates :age, presence: true
end
