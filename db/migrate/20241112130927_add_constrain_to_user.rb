class AddConstrainToUser < ActiveRecord::Migration[7.2]
  def change
    add_index :users, :username, unique: true
  end
end
