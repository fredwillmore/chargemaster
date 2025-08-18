class DrugInformation < ApplicationRecord
  validates :unit, presence: true

  belongs_to :standard_charge_information
end
