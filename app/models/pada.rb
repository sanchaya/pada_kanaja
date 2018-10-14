class Pada < ApplicationRecord
  belongs_to :language
  belongs_to :dictionary


  def self.search(word)
    includes(:dictionary).where(word: word)
  end

  def self.similar_search(word)
    where("word like ?", "%#{word}%")	
  end

  def self.exclude_word_ids(ids)
  	where("id not in (?)", ids)
  end

end
