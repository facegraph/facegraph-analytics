class AddIndexToUserLogsTable < ActiveRecord::Migration
  def self.up
    add_index(:user_logs, :origin_identifier, {:unique => false})
    add_index(:user_logs, :friend_origin_identifier, {:unique => false})
    add_index(:user_logs, :controller_action, {:unique => false})
  end

  def self.down
  end
end
