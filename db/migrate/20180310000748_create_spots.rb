class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :label
      t.boolean :occupied
      t.boolean :accessible
      t.text :spot_information
      t.references :parking_area, foreign_key: true

      t.timestamps
    end
  end
end
