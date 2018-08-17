class Ability < ApplicationRecord
  has_many :dragon_abilities
  has_many :dragons, through: :dragon_abilities
  accepts_nested_attributes_for :dragon_abilities
end
