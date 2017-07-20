class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :release
      t.string :developer
      t.string :publisher
      t.string :platform
      t.string :playtime

      t.timestamps
    end
  end
end
