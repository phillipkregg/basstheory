class CreateStringNotes < ActiveRecord::Migration
  def change
    create_table :string_notes do |t|
      t.integer :string_id
      t.integer :note_id

      t.timestamps
    end
  end
end
