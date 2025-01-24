class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :loans, dependent: :destroy

  validates :title, :author, :category, :price, :condition, presence: true

  def available?
    loans.where("end_date >= ?", Date.today).empty?
  end
end