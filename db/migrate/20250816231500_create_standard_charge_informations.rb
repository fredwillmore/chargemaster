class CreateStandardChargeInformations < ActiveRecord::Migration[8.0]
  def change
    create_table :standard_charge_informations do |t|
      t.string :description
      t.belongs_to :standard_charges_file_information
      t.timestamps
    end
  end
end
