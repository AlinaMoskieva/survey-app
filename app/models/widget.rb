class Widget < ApplicationRecord
  validates :name, :type, presence: true

  enum answer_type: { input: "input", radio: "radio" }

  has_many :questions, dependent: :destroy
end
