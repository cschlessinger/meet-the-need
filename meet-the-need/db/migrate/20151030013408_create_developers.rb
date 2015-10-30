class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
