# == Schema Information
#
# Table name: chords_notes
#
#  id         :integer          not null, primary key
#  note_id    :integer
#  chord_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ChordsNotesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
