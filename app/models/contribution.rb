class Contribution < ActiveRecord::Base
  validates :author, :presence => true
  validates :image, :presence => true
  validates :sentence, :presence => true

  belongs_to :story

end
