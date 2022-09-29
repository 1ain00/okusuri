class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :number
      t.text :memo
      t.datetime :start_time
    
      t.timestamps
    end
  end
end
