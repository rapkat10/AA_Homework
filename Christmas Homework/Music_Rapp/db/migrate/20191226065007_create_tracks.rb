class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :album_id, null: false
      t.integer :ord, null: false
      t.text :lyrics, null: false

      t.timestamps
    end
    add_index :tracks, :album_id, unique: true
    add_index :tracks, :ord, unique: true
  end
end
