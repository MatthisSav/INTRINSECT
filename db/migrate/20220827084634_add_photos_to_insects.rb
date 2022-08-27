class AddPhotosToInsects < ActiveRecord::Migration[6.1]
  def change
    add_column :insects, :photos, :string
  end
end
