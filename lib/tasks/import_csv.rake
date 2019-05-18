require 'csv'

# description of task
desc 'Import csv to padakanaja table'
# rake task name. Here "import_csv"
task import_csv: :environment do

  # CSV File path
  file_name = Rails.root.to_s+'/lib/pada.csv'
  puts 'started'
  # Read from CSV which has header with coma separated
  CSV.foreach(file_name, col_sep: ',', headers: true) do |row|
    # insert into Padas table by matching CSV row values.
    # Make sure we have created Dictionary and dictionary_id is already present in DB,
    # before running this format as we are creating with Dictionary_id
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



# How to run
# Place CSV file in the above path(lib/ folder) OR change the path name on line number 9
# Check whether the dictionary_id primary key is  present in  Dictionaries table
# Or create one before running this JOB.
# Then on terminal Root Path  run the below command
# "rake import_csv"