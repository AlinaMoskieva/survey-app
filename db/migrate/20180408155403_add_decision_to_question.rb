class AddDecisionToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :decision, :text
  end
end
