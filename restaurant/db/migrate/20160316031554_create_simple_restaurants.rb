class CreateSimpleRestaurants < ActiveRecord::Migration
  def change
    create_table :simple_restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :phone

      t.timestamps null: false
    end
  end
end
