class AddCoordinates < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :longitude, :float
    add_column :boats, :latitude, :float
  end
end
