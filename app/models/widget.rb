class Widget < ApplicationRecord
  validates :name, presence: true

  has_many :questions, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
end
