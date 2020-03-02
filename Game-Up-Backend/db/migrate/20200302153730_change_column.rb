class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :clip, :string, null: true
  end
end
