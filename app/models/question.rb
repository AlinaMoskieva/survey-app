class Question < ApplicationRecord
  validates :content, :index, presence: true
  validates :index, uniqueness: true

  has_many :answer_variants, dependent: :destroy
  has_many :answers, dependent: :destroy
end
