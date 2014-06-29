# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  quality    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Note < ActiveRecord::Base
  attr_accessible :name, :quality
  
  has_many :chord_notes
  has_many :chords, :through => :chord_notes
  
  has_many :scale_notes
  has_many :scales, :through => :scale_notes
  
end
