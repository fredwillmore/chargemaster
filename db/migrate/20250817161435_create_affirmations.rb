class CreateAffirmations < ActiveRecord::Migration[8.0]
  def change
    create_table :affirmations do |t|
      t.belongs_to :standard_charges_file_information
      t.string :affirmation
      t.boolean :confirm_affirmation
      t.timestamps
    end
  end
end
