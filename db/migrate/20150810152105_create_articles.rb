class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
    	t.integer "site_id"
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.boolean "widoczny", :default => true
    	t.text "zawartosc"
    	t.attachment :zdjecie
      t.timestamps null: false
    end
  end

  def down
  	drop_table :articles
  end
end
