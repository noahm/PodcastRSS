class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.string :title
      t.string :file_url
      t.text :description
      t.string :itunes_keywords
      t.string :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :episodes
  end
end
