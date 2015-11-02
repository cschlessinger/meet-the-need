class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
    	t.references :developer
    	t.references :project
    	t.references :customer
      t.timestamps null: false
    end
  end
end
