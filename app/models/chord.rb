# == Schema Information
#
# Table name: chords
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  quality    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Chord < ActiveRecord::Base
  attr_accessible :name, :quality
  
  has_many :chord_notes
  has_many :notes, :through => :chord_notes
  
end
