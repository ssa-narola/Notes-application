class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, unique: true
  end
end
