class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :generic_name
      t.string :brand_name

      t.timestamps
    end
  end
end
