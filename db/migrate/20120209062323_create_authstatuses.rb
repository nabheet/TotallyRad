class CreateAuthstatuses < ActiveRecord::Migration
  def self.up
    create_table :authstatuses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :authstatuses
  end
end
