class AnswerVariant < ApplicationRecord
  validates :content, :truthy, :question, presence: true

  belongs_to :question
end
