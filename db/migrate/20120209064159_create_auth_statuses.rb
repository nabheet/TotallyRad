class CreateAuthStatuses < ActiveRecord::Migration
  def self.up
    create_table :auth_statuses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :auth_statuses
  end
end