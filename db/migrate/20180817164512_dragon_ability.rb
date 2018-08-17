class DragonAbility < ActiveRecord::Migration[5.2]
  def change
    create_table :dragon_abilities do |t|
      t.belongs_to :dragon
      t.belongs_to :ability
    end
  end
end
