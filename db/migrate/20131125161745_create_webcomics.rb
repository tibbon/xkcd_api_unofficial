class CreateWebcomics < ActiveRecord::Migration
  def change
    create_table :webcomics do |t|
      t.integer :month
      t.integer :num
      t.text :link
      t.integer :year
      t.text :news
      t.text :safe_title
      t.text :transcript
      t.text :title_text
      t.text :alt
      t.text :img
      t.text :title
      t.integer :day

      t.timestamps
    end
  end
end
