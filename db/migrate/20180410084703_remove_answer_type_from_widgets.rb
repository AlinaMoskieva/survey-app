class RemoveAnswerTypeFromWidgets < ActiveRecord::Migration[5.1]
  def change
    remove_column :widgets, :answer_type, :string
  end
end
