class CreateSheets < ActiveRecord::Migration[7.1]
  def change
    create_table :sheets do |t|
      t.belongs_to :hospital
      t.string :name
      t.string :charge_code_header
      t.string :description_header
      t.string :hcpcs_header
      t.string :cost_header
      t.timestamps
    end
  end
end
