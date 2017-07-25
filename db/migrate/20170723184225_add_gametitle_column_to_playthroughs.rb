class AddGametitleColumnToPlaythroughs < ActiveRecord::Migration[5.0]
  def change
    add_column :playthroughs, :game, :string
  end
end
