class Book < ApplicationRecord
  belongs_to :user

  validates :title, :author, :category, :price, presence: true
end
