class AddAnswerToUserAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :user_answers, :answer, :string, null: false
  end
end
