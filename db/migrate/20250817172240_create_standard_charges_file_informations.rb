class CreateStandardChargesFileInformations < ActiveRecord::Migration[8.0]
  def change
    create_table :standard_charges_file_informations do |t|
      t.belongs_to :hospital

      t.string :hospital_name
      t.date :last_updated_on
      t.string :version
      # t.array :hospital_location
      # t.array :hospital_address
      # t.has_one :license_information
      # t.has_one :affirmation
      
      t.timestamps
    end
  end
end
