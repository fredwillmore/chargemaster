require 'rails_helper'

describe StandardChargesFileInformation, type: :model do

  # == Associations =========================================================
  it { is_expected.to have_many(:hospital_locations) }
  it { is_expected.to have_one(:license_information) }
  it { is_expected.to have_one(:affirmation) }
  it { is_expected.to have_many(:standard_charge_informations) }
  it { is_expected.to have_many(:modifier_informations) }

end
