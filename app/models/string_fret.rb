# == Schema Information
#
# Table name: string_frets
#
#  id                   :integer          not null, primary key
#  note_name            :string(255)
#  instrument_string_id :integer
#  fret_id              :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class StringFret < ActiveRecord::Base
  attr_accessible :instrument_string_id, :fret_id, :note_name
  
  belongs_to :fret
  belongs_to :string
  
end
