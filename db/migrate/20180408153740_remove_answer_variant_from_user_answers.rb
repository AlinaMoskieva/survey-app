class RemoveAnswerVariantFromUserAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_answers, :answer_variant_id, :integer
  end
end
