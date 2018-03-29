class Question < ApplicationRecord
  validates :content, :index, :answer, presence: true
  validates :index, uniqueness: true
end
