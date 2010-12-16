require "migration_helpers" 

class AddForeignKey < ActiveRecord::Migration
  extend MigrationHelpers
  
  def self.up
    foreign_key(:user_logs, :origin_identifier, :users)
    foreign_key(:user_logs, :friend_origin_identifier, :users)
  end

  def self.down
  end
end
