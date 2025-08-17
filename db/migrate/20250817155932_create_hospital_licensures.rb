class CreateHospitalLicensures < ActiveRecord::Migration[8.0]
  def change
    create_table :hospital_licensures do |t|
      t.belongs_to :standard_charges_file_information
      t.string :license_number, null: true
      t.enum :state, enum_type: :state
      t.timestamps
    end
  end
end
