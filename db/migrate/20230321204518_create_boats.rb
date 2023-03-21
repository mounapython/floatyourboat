class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :price
      t.string :address

      t.timestamps
    end
  end
end
