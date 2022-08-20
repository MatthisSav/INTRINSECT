class RenameTypeIntoOrder < ActiveRecord::Migration[6.1]
  def change
    rename_column :insects, :type, :order
  end
end
