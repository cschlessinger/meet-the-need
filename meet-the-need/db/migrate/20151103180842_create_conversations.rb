class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.text :body, presence: true
      t.boolean :read, :default => false
      t.references :developer, presence: true
      t.references :customer, presence: true
      t.timestamps null: false
    end
  end
end
