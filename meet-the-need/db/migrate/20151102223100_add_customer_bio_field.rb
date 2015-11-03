class AddCustomerBioField < ActiveRecord::Migration
  def change
    add_column :customers, :bio, :text
  end
end
