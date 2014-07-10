class CreateInstrumentStrings < ActiveRecord::Migration
  def change
    create_table :instrument_strings do |t|
      t.string :name

      t.timestamps
    end
  end
end
