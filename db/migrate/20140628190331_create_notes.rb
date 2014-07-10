class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :quality
      t.string :octave

      t.timestamps
    end
  end
end
