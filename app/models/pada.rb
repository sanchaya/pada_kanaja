class Pada < ApplicationRecord
  belongs_to :language
  belongs_to :dictionary


  def self.search(word)
    where("word like ?", "%#{word}%")	
  end


end


class Kanajadb < ApplicationRecord
	establish_connection(:pada_kanaja_db)
	GV1 = "gv_kan_english"
end