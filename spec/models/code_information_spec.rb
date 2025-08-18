require 'rails_helper'

describe CodeInformation, type: :model do
  it { should validate_presence_of :code }  
  
  it { is_expected.to belong_to :standard_charge_information }
end
