class Addlengthtolessons < ActiveRecord::Migration
  def change
  	change_table(:lessons) do |t|
  		t.integer :length
  	end	
  end
end
