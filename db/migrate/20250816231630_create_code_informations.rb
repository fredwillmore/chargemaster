class CreateCodeInformations < ActiveRecord::Migration[8.0]
  def change
    create_enum "code_information_type", %w[
      CPT
      NDC
      HCPCS
      RC
      ICD
      DRG
      MS-DRG
      R-DRG
      S-DRG
      APS-DRG
      AP-DRG
      APR-DRG
      APC
      LOCAL
      EAPG
      HIPPS
      CDT
      CDM
      TRIS-DRG
    ]

    create_table :code_informations do |t|
      t.belongs_to :standard_charge_information    
      t.string :code
      t.enum :type, enum_type: "code_information_type"
      t.timestamps
    end
  end
end
