class AddPatientIdToLog < ActiveRecord::Migration[6.1]
  def change
    add_column :logs, :patient_id, :integer
  end
end
