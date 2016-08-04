class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.string :email_address
    t.string :itinerary_reference
    t.string :name
    t.string :airline_code
    t.string :confirmation_number
    t.string :flight_number
    t.string :arrival_date_time
    t.string :departure_date_time
    t.string :departure_airport
    t.string :arrival_airport

      t.timestamps null: false
    end
  end
end
