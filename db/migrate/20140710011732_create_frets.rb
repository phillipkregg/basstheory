class CreateFrets < ActiveRecord::Migration
  def change
    create_table :frets do |t|
      t.string :fret_number

      t.timestamps
    end
  end
end
