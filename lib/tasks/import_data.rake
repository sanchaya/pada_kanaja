desc "Import from Kanada tables to project"
task :import_tables => :environment do
  Kanajadb.table_name = Kanajadb::GV1
  dictionary = Dictionary.find_or_create_by(name: "gv_kan_eng")
  kan_lan = Language.find_or_create_by(name: "kannada", lan_code: "kn")
  eng_lan = Language.find_or_create_by(name: "english", lan_code: "en")
  gvdata = Kanajadb.all

  puts "started"
  gvdata.each do |gv|
  	puts gv.inspect
  	Pada.create(word: gv.word, meaning: gv.meaning, dictionary_id: dictionary.id, pos: gv.pos, language_id: kan_lan.id, meaning_language_id: eng_lan.id)
  end
  puts "ended"

end