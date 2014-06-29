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

require 'test_helper'

class ChordNoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
