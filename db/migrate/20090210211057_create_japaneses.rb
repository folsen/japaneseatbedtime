class CreateJapaneses < ActiveRecord::Migration
  def self.up
    create_table :japaneses do |t|
      t.text :japanese_romaji
      t.text :japanese_kana
      t.text :swedish

      t.timestamps
    end
  end

  def self.down
    drop_table :japaneses
  end
end
