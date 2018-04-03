class CreateWidgets < ActiveRecord::Migration[5.1]
  def change
    create_table :widgets do |t|
      t.string :name, null: false, default: ""
      t.string :type, null: false, default: "input"

      t.timestamps
    end
  end
end
