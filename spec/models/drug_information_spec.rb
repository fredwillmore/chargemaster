require 'rails_helper'

describe DrugInformation, type: :model do
  it { should validate_presence_of :unit }  
  
  it { is_expected.to belong_to :standard_charge_information }
end
