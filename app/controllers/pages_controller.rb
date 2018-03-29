class PagesController < ApplicationController
  expose :first_question, -> { Question.find_by(index: 0) }

  def home
  end
end
