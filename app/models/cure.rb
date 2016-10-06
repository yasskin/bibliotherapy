class Cure < ActiveRecord::Base

  belongs_to :ailment

  validates :url, :presence => true
  validates :headline, :presence => true
  validates :therapy, :presence => true
  validates :author, :presence => true
  validates :book_title, :presence => true
end
