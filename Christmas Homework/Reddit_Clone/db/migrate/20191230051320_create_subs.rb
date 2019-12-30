class CreateSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :subs do |t|
      t.integer :owner_id, null: false
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
    add_index :subs, :owner_id
    add_index :subs, :name, unique: true
  end
end
