class CreateFeedback < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :raiting, null: false, default: 0
      t.references :widget, null: false, index: true
      t.references :user, null: false, index: true
      t.string :comment

      t.timestamps
    end
  end
end
