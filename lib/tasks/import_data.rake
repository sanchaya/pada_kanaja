desc "Import from Kanada tables to project"
task :import_gv1 => :environment do
  Kanajadb.table_name = Kanajadb::GV_KN_EN
  dictionary = Dictionary.find_or_create_by(name: Kanajadb::GV_KN_EN)
  kan_lan = Language.find_or_create_by(name: "kannada", lan_code: "kn")
  eng_lan = Language.find_or_create_by(name: "english", lan_code: "en")
  gvdata = Kanajadb.all

  puts "started"
  gvdata.each do |gv|
  	puts gv.inspect
  	Pada.create(word: gv.word, meaning: gv.meaning, dictionary_id: dictionary.id, pos: gv.pos, language_id: kan_lan.id, meaning_language_id: kan_lan.id)
  end
  puts "ended"

end


task :import_gv2 => :environment do
  Kanajadb.table_name = Kanajadb::GV_EN_KN
  dictionary = Dictionary.find_or_create_by(name: Kanajadb::GV_EN_KN)
  kan_lan = Language.find_or_create_by(name: "kannada", lan_code: "kn")
  eng_lan = Language.find_or_create_by(name: "english", lan_code: "en")
  gvdata = Kanajadb.all

  puts "started"
  gvdata.each do |gv|
    puts gv.inspect
    Pada.create(word: gv.word, meaning: gv.meaning, dictionary_id: dictionary.id, pos: gv.pos, language_id: eng_lan.id, meaning_language_id: kan_lan.id)
  end
  puts "ended"

end

task :import_nkvt => :environment do
  Kanajadb.table_name = Kanajadb::NKVT_PA
  dictionary = Dictionary.find_or_create_by(name: Kanajadb::NKVT_PA)
  kan_lan = Language.find_or_create_by(name: "kannada", lan_code: "kn")
  eng_lan = Language.find_or_create_by(name: "english", lan_code: "en")
  table_data = Kanajadb.all

  puts "started"
  table_data.each do |data|
    puts data.inspect
    Pada.create(word: data.word, meaning: data.description, pos: data.meaning, dictionary_id: dictionary.id, language_id: kan_lan.id, meaning_language_id: eng_lan.id)
  end
  puts "ended"

end

task :import_adalitha => :environment do
  Kanajadb.table_name = Kanajadb::ADALITHA_EN_KN
  dictionary = Dictionary.find_or_create_by(name: Kanajadb::ADALITHA_EN_KN)
  kan_lan = Language.find_or_create_by(name: "kannada", lan_code: "kn")
  eng_lan = Language.find_or_create_by(name: "english", lan_code: "en")
  gvdata = Kanajadb.all

  puts "started"
  gvdata.each do |gv|
    puts gv.inspect
    Pada.create(word: gv.text, meaning: gv.meaning, dictionary_id: dictionary.id, language_id: eng_lan.id, meaning_language_id: kan_lan.id)
  end
  puts "ended"

end
