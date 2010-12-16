class AddControllerActionActiveRecord < ActiveRecord::Migration
  def self.up
    create_table :controller_actions do |t|
      t.string      :controller_action, :null => false
      t.timestamps
    end
  end

  def self.down
  end
end
