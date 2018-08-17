class CreateDragons < ActiveRecord::Migration[5.2]
  def change
    create_table :dragons do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
