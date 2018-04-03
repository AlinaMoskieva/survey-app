class AddUserAnswer < ActiveRecord::Migration[5.1]
  def change
    create_table :user_answers do |t|
      t.references :question, null: false, index: true
      t.references :answer_variant, null: false, index: true
      t.references :user, null: false, index: true
      t.boolean :truthy, null: false, default: false

      t.timestamps
    end
  end
end
