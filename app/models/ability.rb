class Ability < ApplicationRecord
  has_many :dragon_abilities, dependent: :destroy
  has_many :dragons, through: :dragon_abilities
end
