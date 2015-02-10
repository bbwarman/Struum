class Addvideototeachers < ActiveRecord::Migration
  def change
  	change_table(:teachers) do |t|
  		t.string :video
  	end	
  end
end
