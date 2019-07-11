class RemoveColumnsFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :description, :text
  end
end
