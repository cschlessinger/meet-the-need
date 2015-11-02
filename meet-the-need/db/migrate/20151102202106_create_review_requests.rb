class CreateReviewRequests < ActiveRecord::Migration
  def change
    create_table :review_requests do |t|
      t.references :project
      t.references :customer
      t.references :developer
      t.timestamps null: false
    end
  end
end
