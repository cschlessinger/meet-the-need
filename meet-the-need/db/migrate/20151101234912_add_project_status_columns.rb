class AddProjectStatusColumns < ActiveRecord::Migration
  def change
  	add_column :projects, :cost, :string
  	add_column :projects, :status, :boolean
  	add_column :projects, :assigned_date, :datetime
  end
end
