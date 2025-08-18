require 'rails_helper'

describe StandardChargeInformation, type: :model do

  # == Associations =========================================================

  it { is_expected.to belong_to :standard_charges_file_information }
  it { is_expected.to have_many :standard_charges }
  it { is_expected.to have_one :drug_information }
  it { is_expected.to have_many :code_informations }

  # == Validations ==========================================================

  it { should validate_presence_of :description }  
  it { should validate_presence_of :code_informations }  
  it { should validate_presence_of :standard_charges }  
  
end
