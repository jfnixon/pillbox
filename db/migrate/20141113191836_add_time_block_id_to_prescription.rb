class AddTimeBlockIdToPrescription < ActiveRecord::Migration
  def change
    add_column :prescriptions, :time_block_id, :integer
  end
end
