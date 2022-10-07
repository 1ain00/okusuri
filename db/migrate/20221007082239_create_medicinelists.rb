class CreateMedicinelists < ActiveRecord::Migration[6.0]
  def change
    create_table :medicinelists do |t|
      t.string :morning
      t.string :morningnum
      t.string :afternoon
      t.string :afternoonnum
      t.string :evening
      t.string :eveningnum
      t.string :beforesleep
      t.string :beforesleepnum
      t.integer :user_id
      t.timestamps
    end
  end
end
