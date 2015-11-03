class AddInitiatedByToConversations < ActiveRecord::Migration
  def change
    add_column :conversations, :initiated_by, :string
  end
end
