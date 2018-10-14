class Kanajadb < ApplicationRecord
	establish_connection(:pada_kanaja_db)
	GV_KN_EN = "gv_kan_english"
	GV_EN_KN = "gv_eng_kannada"
	ADALITHA_EN_KN = "adalita_kannada"
	NKVT_PA = "nkvt_pa"
end
