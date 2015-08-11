class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    	t.string "imie", :limit => 20
    	t.string "nazwisko", :limit => 60
    	t.string "uzytkownik", :limit => 25
    	t.string "email", :limit => 100, :default => "", :null => false
    	t.string "telefon", :default => "", :null => false
    	t.string "password_digest"
      t.timestamps null: false
    end
    # dodajemy indeks
    add_index("users", "uzytkownik")
  end

  def down
  	drop_table :users
  end
end
