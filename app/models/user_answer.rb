class UserAnswer < ApplicationRecord
  validates_inclusion_of :truthy, in: [true, false]

  belongs_to :question
  belongs_to :user
  belongs_to :answer_variant

  has_many :answers, dependent: :destroy
end
