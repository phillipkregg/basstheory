# == Schema Information
#
# Table name: scale_notes
#
#  id         :integer          not null, primary key
#  scale_id   :integer
#  note_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class ScaleNote < ActiveRecord::Base
  attr_accessible :scale_id, :note_id
  belongs_to :scale
  belongs_to :note
end
