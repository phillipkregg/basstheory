# == Schema Information
#
# Table name: fret_notes
#
#  id         :integer          not null, primary key
#  fret_id    :integer
#  note_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class FretNote < ActiveRecord::Base
  attr_accessible :fret_id, :note_id
  
  belongs_to :fret
  belongs_to :note
  
end
