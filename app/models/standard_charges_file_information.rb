class StandardChargesFileInformation < ApplicationRecord
  # == Modules ==============================================================

  # == Constants ============================================================

  # == Macros ===============================================================

  # == Associations =========================================================

  has_one :license_information, class_name: "HospitalLicensure"
  has_one :affirmation
  has_many :standard_charge_informations
  has_many :modifier_informations

  # == Attributes ===========================================================

  # == Validations ==========================================================

  validates :hospital_name, presence: true
  validates :last_updated_on, presence: true
  validates :version, presence: true
  validates :license_information, presence: true
  validates :affirmation, presence: true
  validates :hospital_location, presence: true
  validates :hospital_address, presence: true

  # == Callbacks ============================================================

  # == Scopes ===============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
