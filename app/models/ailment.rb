class Ailment < ActiveRecord::Base
  belongs_to :topic
  has_many :cures

  validates :description, :presence => true
end
