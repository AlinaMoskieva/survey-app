class Question < ApplicationRecord
  validates :content, :index, presence: true
  validates :index, uniqueness: true
end
