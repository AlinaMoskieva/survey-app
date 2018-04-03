class UserAnswer < ApplicationRecord
  validates :truthy, presence: true

  belongs_to :question
  belongs_to :user
  belongs_to :answer_variant

  has_many :answers, dependent: :destroy
end
