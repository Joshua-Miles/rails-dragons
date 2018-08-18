class User < ApplicationRecord
  has_many :dragons
  accepts_nested_attributes_for :dragons
  
  def dragon_attributes=(dragon)
    if dragon[:name].trim != ''
      Dragon.find_or_create_by(dragon)
    end
  end
end
