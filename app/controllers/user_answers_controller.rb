class UserAnswersController < ApplicationController
  expose :user_answer
  expose :question
  expose :next_question, -> { Question.find_by_index(question.index + 1) }
  expose :e_next_question, -> { Question.find_by_index(question.index + 100) }

  def create
    UserAnswers::Create.call(user_answer: user_answer)
    redirect_to path
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:answer)
      .merge(params.permit(:question_id))
      .merge(user_id: current_user.id)
  end

  def path
    next_question.nil? ? root_path : next_question
  end
end
