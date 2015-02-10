class Adddatetolesson < ActiveRecord::Migration
  def change
  	change_table(:lessons) do |t|
  		t.datetime :date
  	end	
  end
end
