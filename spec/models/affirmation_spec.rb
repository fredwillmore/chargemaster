require 'rails_helper'

describe Affirmation, type: :model do

  # == Associations =========================================================
  it { is_expected.to belong_to :standard_charges_file_information }

  # == Validations ==========================================================
  let(:valid_text) { <<~TEXT.squish }
    To the best of its knowledge and belief, the hospital has included all applicable
    standard charge information in accordance with the requirements of 45 CFR 180.50,
    and the information encoded is true, accurate, and complete as of the date indicated.
  TEXT
  it { should allow_value(valid_text).for(:affirmation) }
  it { should_not allow_value("other text").for(:affirmation) }

end
