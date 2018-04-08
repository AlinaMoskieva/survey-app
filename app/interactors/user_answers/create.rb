module UserAnswers
  class Create
    include Interactor

    delegate :user_answer, to: :context
    delegate :question, to: :user_answer
    delegate :right_answer, to: :question

    def call
      user_answer.truthy = right_answer?
      user_answer.save || context.fail!
    end

    private

    def right_answer?
      user_answer.answer.eql?(right_answer.first.content)
    end
  end
end
