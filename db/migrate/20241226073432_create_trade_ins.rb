class CreateTradeIns < ActiveRecord::Migration[7.1]
  def change
    create_table :trade_ins do |t|
      t.string "fullname"
      t.string "email"
      t.string "phone"
      t.string "zip"
      t.string "manufacturer_name"
      t.string "manufacturer_model"
      t.string "serial"
      t.integer "years"
      t.string "options"
      t.integer "body"
      t.integer "paint"
      t.integer "glass"
      t.integer "rust"
      t.integer "frame"
      t.integer "electronic_components"
      t.integer "motor"
      t.integer "bearings"
      t.integer "mechanical_problems"
      t.text "message", null: true

      t.timestamps
    end
  end
end
