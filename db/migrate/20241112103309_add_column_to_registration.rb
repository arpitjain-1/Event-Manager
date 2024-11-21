class AddColumnToRegistration < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :name, :varchar, null: false
    add_column :users, :username, :varchar, null: false
    add_column :users, :role, :string, null: false
    add_column :users, :contact_number, :varchar, :limit=>13, null: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
