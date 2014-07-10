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

require 'test_helper'

class StringFretTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
