class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :brand
      t.integer :price_per_hour
      t.integer :price_per_day
      t.integer :milage
      t.string :plate_number

      t.timestamps
    end
  end
end
