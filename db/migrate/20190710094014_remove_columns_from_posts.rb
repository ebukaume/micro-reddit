class RemoveColumnsFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :link, :string
  end
end
