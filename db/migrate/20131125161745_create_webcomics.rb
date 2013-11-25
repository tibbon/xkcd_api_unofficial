class CreateWebcomics < ActiveRecord::Migration
  def change
    create_table :webcomics do |t|
      t.integer :month
      t.integer :num, index: true, unique: true
      t.text :link
      t.integer :year, index: true
      t.text :news
      t.text :safe_title
      t.text :transcript
      t.text :title_text
      t.text :alt, index: true
      t.text :img
      t.text :title, index: true
      t.integer :day

      t.timestamps
    end
  end
end
