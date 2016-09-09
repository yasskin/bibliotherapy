class Topic < ActiveRecord::Base
  has_many :ailments

  validates :name, :presence => true
end
