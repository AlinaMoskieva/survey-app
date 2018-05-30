class FeedbacksController < ApplicationController
  expose :widgets, ->{ Widget.order(:id).group(:name, :id).includes(:feedbacks, questions: :user_answers) }

  def index
    authorize :feedback
  end

  def create
    Feedbacks::Create.call(params: params[:feedbacks], user: current_user)
    redirect_to root_path
  end
end
