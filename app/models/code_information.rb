class CodeInformation < ApplicationRecord
  validates :code, presence: true

  belongs_to :standard_charge_information
end
