class CreateFretNotes < ActiveRecord::Migration
  def change
    create_table :fret_notes do |t|
      t.integer :fret_id
      t.integer :note_id

      t.timestamps
    end
  end
end
