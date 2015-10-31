class CreateDeveloperTechnologies < ActiveRecord::Migration
  def change
    create_table :developer_technologies do |t|
      t.references :developer
      t.references :technology

      t.timestamps null: false
    end
  end
end
