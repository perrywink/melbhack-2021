class AddLogIdToDose < ActiveRecord::Migration[6.1]
  def change
    add_column :doses, :log_id, :integer
  end
end
