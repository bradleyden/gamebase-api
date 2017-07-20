class UpdateGamesTableDatatypes < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :release, 'date USING CAST(release AS date)'
    change_column :games, :playtime, 'integer USING CAST(playtime AS integer)'
  end
end
