class Question < ApplicationRecord
  validates :content, :index, presence: true
  validates :index, uniqueness: true

  belongs_to :widget

  has_many :answer_variants, dependent: :destroy
  has_many :user_answers, dependent: :destroy

  def right_answer
    answer_variants.where(truthy: true)
  end
end
