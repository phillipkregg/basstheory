# == Schema Information
#
# Table name: instrument_strings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class InstrumentString < ActiveRecord::Base
  attr_accessible :name
  
  has_many :string_notes
  has_many :notes, :through => :string_notes
  
end
