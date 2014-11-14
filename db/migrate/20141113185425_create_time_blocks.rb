class CreateTimeBlocks < ActiveRecord::Migration
  def change
    create_table :time_blocks do |t|
      t.integer :user_id
      t.string :name
      t.time :start_time
      t.time :end_time
      
      t.timestamps
    end
  end
end
