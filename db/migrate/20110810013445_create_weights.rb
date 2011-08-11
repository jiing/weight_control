class CreateWeights < ActiveRecord::Migration
  def self.up
    create_table :weights do |t|
      t.string :name
      t.float :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :weights
  end
end
