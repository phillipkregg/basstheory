class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :name
      t.string :quality

      t.timestamps
    end
  end
end
