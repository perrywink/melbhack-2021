class DropAdmrLogsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :admr_logs
  end
end
