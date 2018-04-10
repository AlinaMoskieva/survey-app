class RemoveAnswerTypeFromWidgets < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_answers, :answer_type, :string
  end
end
