class Cure < ActiveRecord::Base

  belongs_to :ailment

  validates :therapy, :presence => true
end
