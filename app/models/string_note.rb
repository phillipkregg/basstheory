# == Schema Information
#
# Table name: string_notes
#
#  id         :integer          not null, primary key
#  string_id  :integer
#  note_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class StringNote < ActiveRecord::Base
  attr_accessible :instrument_string_id, :note_id
  
  belongs_to :instrument_string
  belongs_to :note
end
