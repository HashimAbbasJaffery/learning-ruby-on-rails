class CreateSells < ActiveRecord::Migration[7.1]
  def change
    create_table :sells do |t|

      t.string "name"
      t.string "email"
      t.string "phone"
      t.string "file"
      t.string "manufacturer_name"
      t.string "manufacturer_model"
      t.string "serial"
      t.integer "fuel"
      t.integer "power_source"
      t.integer "year"
      t.json "fuel_types"
      t.json "power_sources"
      t.integer "condition"
      t.float "price"
      t.text "description"

      t.timestamps
    end
  end
end
