class Topic < ActiveRecord::Base
  has_many :cures

  validates :name, :presence => true
end
