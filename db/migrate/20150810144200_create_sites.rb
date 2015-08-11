class CreateSites < ActiveRecord::Migration
  def up
    create_table :sites do |t|
    	t.integer "category_id"
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.boolean "widoczna", :default => true
      t.timestamps null: false
    end
    add_index("sites", "category_id")
  end

  def down
  	drop_table :sites
  end
end
