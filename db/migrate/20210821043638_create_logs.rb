class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.datetime :time_admr
      t.integer :dose

      t.timestamps
    end
  end
end
