class Dragon < ApplicationRecord
  belongs_to :user
  has_many :dragon_abilities
  has_many :abilities, through: :dragon_abilities
end
