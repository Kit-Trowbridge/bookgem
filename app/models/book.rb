class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :title, :author, :category, :price, presence: true
end
