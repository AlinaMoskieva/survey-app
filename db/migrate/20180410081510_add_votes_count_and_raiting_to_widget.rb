class AddVotesCountAndRaitingToWidget < ActiveRecord::Migration[5.1]
  def change
    add_column :widgets, :votes_count, :integer, default: 0, null: false
    add_column :widgets, :raiting, :float, default: 0, null: false
  end
end
