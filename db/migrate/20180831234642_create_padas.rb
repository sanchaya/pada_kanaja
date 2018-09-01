class CreatePadas < ActiveRecord::Migration[5.2]
  def change
    create_table :padas do |t|
      t.string :word
      t.text :meaning
      t.text :pos
      t.references :language, foreign_key: true
      t.integer :meaning_language_id
      t.references :dictionary, foreign_key: true

      t.timestamps
    end
  end
end
