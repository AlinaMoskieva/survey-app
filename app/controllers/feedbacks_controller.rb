class FeedbacksController < ApplicationController
  expose :feedbacks
  expose :widgets, ->{ Widget.order(:id).group(:name, :id) }

  def index
  end

  def create
    Feedbacks::Create.call(params: params[:feedbacks], user: current_user)
    redirect_to root_path
  end
end
