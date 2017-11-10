class CreateDefinition < ActiveRecord::Migration[5.1]
  def change
    create_table :definitions do |t|
      t.integer :word_id
      t.integer :user_id
      t.string :part_of_speech
      t.text :definition_text
      t.text :sentence
    end
  end
end
