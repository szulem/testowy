class CreateGalleries < ActiveRecord::Migration
  def up
    create_table :galleries do |t|
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.text "opis"
    	t.boolean "widoczna", :default => false
    	t.attachment :zdjecie
      t.timestamps null: false
    end
  end

  def down
  	drop_table :galleries
  end
end
