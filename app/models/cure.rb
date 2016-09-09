class Cure < ActiveRecord::Base
  belongs_to :topic

  validates :sympton, :presence => true
end
