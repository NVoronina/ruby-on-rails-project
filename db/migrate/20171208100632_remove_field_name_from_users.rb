class RemoveFieldNameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :login, :string
    remove_column :users, :name, :string
    remove_column :users, :surname, :string
    remove_column :users, :is_admin, :string
  end
end
