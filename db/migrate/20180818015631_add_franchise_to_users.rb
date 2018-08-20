class AddFranchiseToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :franchise, :string
  end
end
