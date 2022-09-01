class AddCoordinatesToInsects < ActiveRecord::Migration[6.1]
  def change
    add_column :insects, :latitude, :float
    add_column :insects, :longitude, :float
    add_column :insects, :address, :string
  end
end
