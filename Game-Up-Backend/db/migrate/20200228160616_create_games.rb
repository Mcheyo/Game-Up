class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :database_id
      t.string :name
      t.string :released
      t.string :background_image
      t.integer :rating
      t.integer :metacritic
      t.integer :playtime
      t.string :clip

      t.timestamps
    end
  end
end
