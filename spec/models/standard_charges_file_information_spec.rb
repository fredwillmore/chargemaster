require 'rails_helper'

describe StandardChargesFileInformation, type: :model do

  # == Associations =========================================================
  it { is_expected.to have_many :hospital_locations }
  it { is_expected.to have_one :license_information }
  it { is_expected.to have_one :affirmation }
  it { is_expected.to have_many :standard_charge_informations }
  it { is_expected.to have_many :modifier_informations }

  # == Validations ==========================================================

  it { should validate_presence_of :hospital_name }
  it { should validate_presence_of :last_updated_on }
  it { should validate_presence_of :version }
  it { should validate_presence_of :hospital_locations }
  it { should validate_presence_of :license_information }
  it { should validate_presence_of :affirmation }

end
