class CreateMedicinelists < ActiveRecord::Migration[6.0]
  def change
    create_table :medicinelists do |t|
      t.string :name
      t.string :number
      t.integer :user_id
      t.integer    :timing_id     , null: false
      t.timestamps
    end
  end
end
