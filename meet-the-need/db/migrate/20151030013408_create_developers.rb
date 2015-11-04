class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :zipcode
      t.string :tagline
      t.text :bio
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end
