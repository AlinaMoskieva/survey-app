class ChangeTypeWidgetColumnToAnswerType < ActiveRecord::Migration[5.1]
  def change
    rename_column :widgets, :type, :answer_type
  end
end
