class UserDecorator < ApplicationDecorator
  delegate :id, :full_name, :email, :fetch_answer_by

  def full_name_with_email
    "#{object.full_name} (#{object.email})"
  end
end
