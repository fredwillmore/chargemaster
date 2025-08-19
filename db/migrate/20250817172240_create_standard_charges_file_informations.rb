class CreateStandardChargesFileInformations < ActiveRecord::Migration[8.0]
  def change
    create_table :standard_charges_file_informations do |t|
      t.belongs_to :hospital

      t.string :hospital_name
      t.date :last_updated_on
      t.string :version
      t.string :hospital_location, array: true, default: []
      t.string :hospital_address, array: true, default: []
      
      t.timestamps
    end
  end
end
