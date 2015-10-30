class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.references :customer
      t.references :developer

      t.timestamps null: false
    end
  end
end
