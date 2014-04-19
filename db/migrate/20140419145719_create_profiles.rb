class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :street
    	t.string :city
    	t.string :state
    	t.integer :zip
    	t.integer :user_id
    	
    end
  end
end
