class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.boolean "widoczna", :default => true
      t.timestamps null: false
    end
  end

  def down
  	drop_table :categories
  end
end
