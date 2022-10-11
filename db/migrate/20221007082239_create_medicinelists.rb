class CreateMedicinelists < ActiveRecord::Migration[6.0]
  def change
    create_table :medicinelists do |t|
      t.string :name,null:false
      t.string :number,null:false
      t.integer :user_id, null:false
      t.integer :timing_id, null: false
      t.text :memo
      t.boolean :done, default: false
      t.timestamps
    end
  end
end
