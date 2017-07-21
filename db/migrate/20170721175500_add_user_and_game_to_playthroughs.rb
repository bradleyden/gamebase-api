class AddUserAndGameToPlaythroughs < ActiveRecord::Migration[5.0]
  def change
    add_reference :playthroughs, :user, foreign_key: true
    add_reference :playthroughs, :game, foreign_key: true
  end
end
