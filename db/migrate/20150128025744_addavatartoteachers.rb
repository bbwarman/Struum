class Addavatartoteachers < ActiveRecord::Migration
  def change
  	change_table(:teachers) do |t|
  		t.string :avatar
  	end	
  end
end
