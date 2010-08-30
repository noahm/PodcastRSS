class Episode < ActiveRecord::Base
  validates_numericality_of :length
end
