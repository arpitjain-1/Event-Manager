class RemoveNotNullConstraintFromUsers < ActiveRecord::Migration[7.0]
  def change
    # Example: Remove the NOT NULL constraint from the role column
    change_column_null :users, :role, true
    change_column_null :users, :name, true
    # If you need to remove NOT NULL from other columns, do the same for them:
    change_column_null :users, :username, true
    change_column_null :users, :contact_number, true
  end
end
