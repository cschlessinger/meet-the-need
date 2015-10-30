class CreateDeveloperTopics < ActiveRecord::Migration
  def change
    create_table :developer_topics do |t|
      t.references :developer
      t.references :topic

      t.timestamps null: false
    end
  end
end
