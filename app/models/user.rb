class User < ApplicationRecord
  has_many :dragons
  validates :name, presence: true

  def my_dragons
    Dragon.all.select do |dragon|
      dragon.user_id == self.id
    end
  end
end
