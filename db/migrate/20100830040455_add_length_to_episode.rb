class AddLengthToEpisode < ActiveRecord::Migration
  def self.up
    add_column :episodes, :length, :integer
  end

  def self.down
    remove_column :episodes, :length
  end
end
