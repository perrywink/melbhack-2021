class RemoveDoseFromLogs < ActiveRecord::Migration[6.1]
  def change
    remove_column :logs, :dose, :integer
  end
end
