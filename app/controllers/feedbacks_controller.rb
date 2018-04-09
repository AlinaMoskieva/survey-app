class FeedbacksController < ApplicationController
  expose :feedbacks
  expose :widgets, ->{ Widget.order(:id).group(:name, :id) }

  def index
  end

  def create
    params[:feedbacks].each do |feedback|
      Feedback.create(feedback_params(feedback))
    end

    redirect_to feedbacks
  end

  private

  def feedback_params(params)
    params.permit(:raiting, :comment, :widget_id, :user_id)
  end
end
