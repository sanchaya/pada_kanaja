require 'csv'

desc 'Import csv to padakanaja table'
task import_csv: :environment do

  file_name = Rails.root.to_s+'/lib/pada.csv'
  puts 'started'
  CSV.foreach(file_name, col_sep: ',', headers: true) do |row|
    Pada.create(word: row['word'], meaning: row['meaning'],
                dictionary_id: row['dictionary_id'],
                pos: row['pos'], language_id: row['language_id'],
                meaning_language_id: row['meaning_language_id'])
    puts row['word']
    puts row['meaning']
    puts '>>>>>>>>>>>>>..'
  end
  puts 'End '

end
