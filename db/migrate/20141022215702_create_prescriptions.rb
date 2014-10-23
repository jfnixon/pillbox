class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :drug_name
      t.string :description
      t.text :instructions
      t.date :fill_date
      t.integer :dose_count
      t.integer :user_id

      t.timestamps
    end
  end
end
