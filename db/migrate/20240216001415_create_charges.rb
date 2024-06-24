class CreateCharges < ActiveRecord::Migration[7.1]
  def change
    create_table :charges do |t|
      t.belongs_to :hospital
      t.string :description
      t.string :hcpcs_code
      t.string :charge_code
      t.decimal :cost
      t.timestamps
    end
  end
end
