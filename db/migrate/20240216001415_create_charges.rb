class CreateCharges < ActiveRecord::Migration[7.1]
  def change
    create_table :standard_charges do |t|
      t.belongs_to :hospital
      t.string :setting
      t.decimal :gross_charge
      t.decimal :discounted_cash
      t.decimal :minimum
      t.decimal :maximum

      t.timestamps
    end
  end
end
