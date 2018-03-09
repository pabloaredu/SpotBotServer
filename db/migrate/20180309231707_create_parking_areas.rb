class CreateParkingAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_areas do |t|
      t.float :latitude
      t.float :longitude
      t.integer :total_spaces_available
      t.integer :total_accessible_spaces
      t.text :parking_area_information

      t.timestamps
    end
  end
end
