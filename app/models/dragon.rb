class Dragon < ApplicationRecord
  has_many :dragon_abilities
  has_many :abilities, through: :dragon_abilities

  # def abilities=(value)
  # end

  belongs_to :user, optional: true
  validates :name, presence: true
end
