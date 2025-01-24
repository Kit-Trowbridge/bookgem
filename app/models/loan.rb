class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :start_date, :end_date, presence: true

  scope :active, -> { where("end_date >= ?", Date.today) }
  scope :past, -> { where("end_date < ?", Date.today) }
end