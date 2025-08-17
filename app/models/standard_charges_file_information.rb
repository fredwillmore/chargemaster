class StandardChargesFileInformation < ApplicationRecord
  # == Modules ==============================================================

  # == Constants ============================================================

  # == Macros ===============================================================

  # == Associations =========================================================

  has_many :hospital_locations
  has_one :license_information, class_name: "HospitalLicensure"
  has_one :affirmation
  has_many :standard_charge_informations
  has_many :modifier_informations

  # == Attributes ===========================================================

  # == Validations ==========================================================

  # == Callbacks ============================================================

  # == Scopes ===============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
