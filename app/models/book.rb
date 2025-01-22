class Book < ApplicationRecord
  belongs_to :user, optional: true

  validates :title, :author, :category, :price, presence: true
end
