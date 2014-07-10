class CreateStringFrets < ActiveRecord::Migration
  def change
    create_table :string_frets do |t|
      t.string  :note_name
      t.integer :instrument_string_id
      t.integer :fret_id

      t.timestamps
    end
  end
end
