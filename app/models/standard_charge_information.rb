class StandardChargeInformation < ApplicationRecord
  # == Modules ==============================================================

  # == Constants ============================================================

  # == Macros ===============================================================

  # == Associations =========================================================

  belongs_to :standard_charges_file_information
  has_many :standard_charges
  has_many :code_informations
  has_one :drug_information

  # == Attributes ===========================================================

  # == Validations ==========================================================

  validates :description, presence: true
  validates :code_informations, presence: true
  validates :standard_charges, presence: true
  
  # == Callbacks ============================================================

  # == Scopes ===============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================

  # == Validations ==========================================================

end
