class AddStateCounterToDonations < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :state_counter, :integer, default: 0
  end
end
