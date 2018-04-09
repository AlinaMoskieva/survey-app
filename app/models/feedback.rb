class Feedback < ApplicationRecord
  validates :raiting, presence: true

  belongs_to :widget
  belongs_to :user
end
