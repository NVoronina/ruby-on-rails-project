class RenamePostsColomn < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :post_id, :integer
    remove_column :photos, :posts_id
  end
end
