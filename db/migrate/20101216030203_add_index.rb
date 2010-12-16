class AddIndex < ActiveRecord::Migration
  def self.up
    add_index(:users, :origin_identifier, {:unique => true})
  end

  def self.down
  end
end
