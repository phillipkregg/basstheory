# == Schema Information
#
# Table name: frets
#
#  id          :integer          not null, primary key
#  fret_number :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Fret < ActiveRecord::Base
  attr_accessible :fret_number
  
  has_many :fret_notes
  has_many :notes, :through => :fret_notes
  
  has_many :string_frets
  has_many :strings, :through => :string_frets
  
end
