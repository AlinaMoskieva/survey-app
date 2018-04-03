class AddWidgetToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :widget, index: true, null: false
  end
end
