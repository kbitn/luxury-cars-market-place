class RemoveReferenceFromCar < ActiveRecord::Migration[5.2]
  def change
    remove_reference :cars, :reviews, foreign_key: true
  end
end
