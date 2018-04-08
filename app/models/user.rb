class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  validates :full_name, presence: true

  has_many :user_answers, dependent: :destroy
end
