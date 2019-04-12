class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.string :manufacture
      t.string :name
      t.string :family
      t.string :range
      t.integer :typical_seating
      t.string :overall_length
      t.string :height
      t.string :wing_span
      t.string :img_length
      t.string :img_height
      t.string :img_wing_span

      t.timestamps
    end
  end
end
