class CreateHospitals < ActiveRecord::Migration[7.1]
  def change
    create_table :hospitals do |t|

      t.string :name
      t.timestamps
    end
  end
end
