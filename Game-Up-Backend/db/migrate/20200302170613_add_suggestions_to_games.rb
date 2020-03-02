class AddSuggestionsToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :suggested_name, :string
    add_column :games, :suggested_background_image, :string
    add_column :games, :suggested_description, :string
  end
end
