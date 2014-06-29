# == Schema Information
#
# Table name: scales
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  quality    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Scale < ActiveRecord::Base
  attr_accessible :name, :quality
  
  has_many :scale_notes
  has_many :notes, :through => :scale_notes
  
end
