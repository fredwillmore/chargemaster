class CreateDrugInformations < ActiveRecord::Migration[8.0]
  def change
    create_enum "drug_information_type", %w[
      GR
      ME
      ML
      UN
      F2
      EA
      GM
    ]

    create_table :drug_informations do |t|
      t.belongs_to :standard_charge_information    
      t.string :unit
      t.enum :type, enum_type: "drug_information_type"
      t.timestamps
    end
  end
end
