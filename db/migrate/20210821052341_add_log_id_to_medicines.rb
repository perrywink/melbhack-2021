class AddLogIdToMedicines < ActiveRecord::Migration[6.1]
  def change
    add_column :medicines, :log_id, :integer
  end
end
