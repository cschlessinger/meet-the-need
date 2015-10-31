class CreateProjectTopics < ActiveRecord::Migration
  def change
    create_table :project_topics do |t|
      t.references  :project
      t.references  :topic

      t.timestamps null: false
    end
  end
end
