class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
      t.string :name
      t.string :quality

      t.timestamps
    end
  end
end
