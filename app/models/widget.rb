class Widget < ApplicationRecord
  validates :name, :answer_type, presence: true

  enum answer_type: { input: "input", radio: "radio" }

  has_many :questions, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  def raiting
    feedbacks.pluck(:raiting).sum.to_f / feedbacks.count
  end
end
