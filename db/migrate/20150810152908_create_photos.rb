class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
    	t.integer "gallery_id"
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.boolean "widoczne", :default => true
    	t.string "opis"
    	t.attachment :zdjecie
      t.timestamps null: false
    end
  end

  def down
  	drop_table :photos
  end
end
