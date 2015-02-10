class Addgenretoteachers < ActiveRecord::Migration
  def change
  	change_table(:teachers) do |t|
  		t.string :genre
  	end	
  end
end
