class CreateDeckCards < ActiveRecord::Migration
  def self.up
    create_table :deck_cards do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :deck_cards
  end
end
