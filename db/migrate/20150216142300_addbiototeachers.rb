class Addbiototeachers < ActiveRecord::Migration
  def change
  	change_table(:teachers) do |t|
  		t.string :bio
  	end	
  end
end
