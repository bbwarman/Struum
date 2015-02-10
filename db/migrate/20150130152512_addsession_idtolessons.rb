class AddsessionIdtolessons < ActiveRecord::Migration
  def change
  	change_table(:lessons) do |t|
  		t.string :sessionId
  	end	
  end
end
