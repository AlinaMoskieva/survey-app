class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :content, null: false, default: ""
      t.integer :index, null: false, default: 0

      t.timestamps
    end
  end
end
