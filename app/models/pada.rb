class Pada < ApplicationRecord
  belongs_to :language
  belongs_to :dictionary


  def self.search(word)
    # where("word like ?", "%#{word}%")	
    includes(:dictionary).where(word: word)	
  end


end