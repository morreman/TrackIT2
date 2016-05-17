class Proposal < ActiveRecord::Base
  scope :approved, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }

  belongs_to :user
  has_many :motivations
end
