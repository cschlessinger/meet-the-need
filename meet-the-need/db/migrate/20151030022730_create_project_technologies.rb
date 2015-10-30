class CreateProjectTechnologies < ActiveRecord::Migration
  def change
    create_table :project_technologies do |t|
      t.references  :project
      t.references  :technology

      t.timestamps null: false
    end
  end
end
