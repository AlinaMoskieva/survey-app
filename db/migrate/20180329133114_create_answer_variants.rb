class CreateAnswerVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_variants do |t|
      t.string :content, null: false
      t.references :question, null: false, index: true
      t.boolean :truthy, null: false, default: false

      t.timestamps
    end
  end
end
