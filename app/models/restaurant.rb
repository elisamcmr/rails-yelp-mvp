class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = %w[Chinese Italian Japanese French Belgian]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: '%{value} is not a valid category' }
end
