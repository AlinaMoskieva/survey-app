class User < ApplicationRecord
  enum role: { user: "user", admin: "administrator" }

  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  validates :full_name, presence: true

  has_many :user_answers, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  def fetch_answer_by(question)
    user_answers.where(question: question).last
  end
end
