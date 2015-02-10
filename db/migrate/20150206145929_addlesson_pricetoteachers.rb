class AddlessonPricetoteachers < ActiveRecord::Migration
  def change
  	change_table(:teachers) do |t|
  		t.integer :lesson_price
  	end	
  end
end
