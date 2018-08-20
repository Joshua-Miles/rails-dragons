class Ability < ApplicationRecord
  has_many :dragon_abilities
  has_many :dragons, through: :dragon_abilities

  def dragon_ability_list
    DragonAbility.all.select {|dragon_ability| dragon_ability.ability == self}
  end

  def dragon_list
    self.dragon_ability_list.map {|dragon_ability| dragon_ability.dragon}
  end
end
