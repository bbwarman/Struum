class AddstripeRecipientIdtoteacher < ActiveRecord::Migration
  def change
  	change_table(:teachers) do |t|
  		t.string :stripe_recipient_id
  	end	
  end
end
