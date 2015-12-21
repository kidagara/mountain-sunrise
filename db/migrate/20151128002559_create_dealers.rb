class CreateDealers < ActiveRecord::Migration
  def up
    create_table :dealers do |t|
    	t.string :name
    	t.string :city
    	t.string :state, limit: 2
    	t.string :phone_number
    	t.string :website

    	t.timestamps
    end
  end

  def down
  	drop_table :dealers
  end
end