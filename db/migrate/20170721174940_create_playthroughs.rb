class CreatePlaythroughs < ActiveRecord::Migration[5.0]
  def change
    create_table :playthroughs do |t|
      t.date :date_started
      t.date :date_finished
      t.integer :time
      t.integer :completion
      t.timestamps
    end
  end
end
