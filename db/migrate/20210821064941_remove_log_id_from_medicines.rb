class RemoveLogIdFromMedicines < ActiveRecord::Migration[6.1]
  def change
    remove_column :medicines, :log_id, :integer
  end
end
