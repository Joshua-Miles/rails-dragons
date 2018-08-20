class Dragon < ApplicationRecord
  belongs_to :user
  has_many :dragon_abilities
  has_many :abilities, through: :dragon_abilities

  def id_attributes=(ability_array)
    if ability_array.length >= 1
      ability_array.each do |ability_id|
        DragonAbility.create(ability_id: ability_id, dragon_id: self.id)
      end
    end
  end

  def dragon_ability_list
    DragonAbility.all.select {|dragon_ability| dragon_ability.dragon == self}
  end

  def ability_list
    self.dragon_ability_list.map {|dragon_ability| dragon_ability.ability}
  end
end
