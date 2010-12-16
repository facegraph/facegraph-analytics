class UserLog < ActiveRecord::Migration
  def self.up
    create_table :user_logs do |t|
      t.integer      :origin_identifier, :null => false
      t.integer      :friend_origin_identifier, :null => false
      t.integer     :controller_action, :null => false
      t.integer     :count, :default => 0
      t.timestamps
    end
  end

  def self.down
  end
end
