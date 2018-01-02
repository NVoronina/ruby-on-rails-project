class AddColomnPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :price, :integer
    add_column :users, :tel, :string
  end
end
