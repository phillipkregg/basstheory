# == Schema Information
#
# Table name: chord_notes
#
#  id         :integer          not null, primary key
#  chord_id   :integer
#  note_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class ChordNote < ActiveRecord::Base
  attr_accessible :chord_id, :note_id
  
  belongs_to :chord
  belongs_to :note
end
