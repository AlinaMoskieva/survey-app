class AnswerVariant < ApplicationRecord
  validates :content, :question, presence: true
  validates_inclusion_of :truthy, in: [true, false]

  belongs_to :question
end
