class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status, default: 'pending'
      t.references :user, foreign_key: true
      t.references :car, foreign_key: true
      t.integer :renting_time

      t.timestamps
    end
  end
end
