class Book < ApplicationRecord
  belongs_to :user
  has_many :loans
  validates :title, :author, :category, :price, presence: true
end
