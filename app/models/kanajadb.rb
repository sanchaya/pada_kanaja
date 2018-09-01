class Kanajadb < ApplicationRecord
	establish_connection(:pada_kanaja_db)
	GV1 = "gv_kan_english"
end