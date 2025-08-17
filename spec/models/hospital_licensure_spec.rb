require 'rails_helper'

describe HospitalLicensure, type: :model do
  # == Associations =========================================================
  it { is_expected.to belong_to :standard_charges_file_information }

  # == Validations ==========================================================
  it { should validate_presence_of :state }  
end
