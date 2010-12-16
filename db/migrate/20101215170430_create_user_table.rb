class CreateUserTable < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string      :origin_identifier, :null => false
      t.string      :access_token, :null => true
      t.string      :first_name, :limit => 20
      t.string      :last_name, :limit => 20
      t.boolean     :sex, :null => true
      t.datetime    :date_of_birth, :null => true
      t.string      :locale, :null => true
      t.float       :time_zone, :null => true
      t.integer     :login_count, :default => 0
      t.integer     :visit_count, :default => 0
      t.integer     :page_view_count, :default => 0
      t.timestamps
    end
  end

  def self.down
  end
end
