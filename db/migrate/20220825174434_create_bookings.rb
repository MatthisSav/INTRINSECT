class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :booking_start_date
      t.datetime :booking_end_date
      t.references :user, null: false, foreign_key: true
      t.references :insect, null: false, foreign_key: true

      t.timestamps
    end
  end
end
