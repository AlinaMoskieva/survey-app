class UserAnswersController < ApplicationController
  expose :user_answer
  expose :question
  expose :next_question, -> { Question.find_by_index(question.index + 1) }

  def create
    UserAnswers::Create.call(user_answer: user_answer)
    redirect_to path
  end

  private

  def user_answer_params
    params.permit(:question_id)
      .merge(user_id: current_user.id)
      .merge(answer: determine_answer)
  end

  def determine_answer
    values = params.require(:user_answer).permit(:answer, :position_value)
    values[:position_value].nil? ? values[:answer] : values[:position_value]
  end

  def path
    next_question.nil? ? root_path : next_question
  end
end
