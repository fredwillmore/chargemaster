class Affirmation < ApplicationRecord
  # == Modules ==============================================================

  # == Constants ============================================================

  VALID_TEXT = <<~TEXT.squish.freeze
    To the best of its knowledge and belief, the hospital has included all applicable
    standard charge information in accordance with the requirements of 45 CFR 180.50,
    and the information encoded is true, accurate, and complete as of the date indicated.
  TEXT

  # == Macros ===============================================================

  # == Associations =========================================================

  belongs_to :standard_charges_file_information

  # == Attributes ===========================================================

  # == Validations ==========================================================

  validates :affirmation, presence: true, format: { with: /\A#{VALID_TEXT}\z/, message: "must be #{VALID_TEXT}" }
  validates :confirm_affirmation, presence: true

  # == Callbacks ============================================================

  # == Scopes ===============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
