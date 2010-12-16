require "migration_helpers"

class AddFkFromUserLogToControllerActionTable < ActiveRecord::Migration
  extend MigrationHelpers

  def self.up
    add_index(:controller_actions, :controller_action, {:unique => true})
    foreign_key(:user_logs, :controller_action, :controller_actions)
  end

  def self.down
  end
end
