class CreateHospitals < ActiveRecord::Migration[7.1]
  def change
    create_table :hospitals do |t|

      t.string :facility_id, null: false
      t.string :facility_name, null: false
      t.string :address, null: false
      t.string :city_town, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.string :county_parish, null: false
      t.string :telephone_number, null: false
      t.string :hospital_type, null: false
      t.string :hospital_ownership, null: false
      t.string :emergency_services, null: false
      t.string :meets_criteria_for_birthing_friendly_designation
      t.string :hospital_overall_rating
      t.string :hospital_overall_rating_footnote
      
      t.string :employer_identification_number
      t.string :machine_readable_file_url

      t.timestamps
    end
  end
end
