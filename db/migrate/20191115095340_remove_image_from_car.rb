class RemoveImageFromCar < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :image
  end
end
