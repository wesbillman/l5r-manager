class FixDeckCards < ActiveRecord::Migration

  def self.up
    remove_column :deck_cards, :name
    remove_column :deck_cards, :user_id  
    add_column :deck_cards, :card_id, :integer
    add_column :deck_cards, :deck_id, :integer
  end

  def self.down
    remove_column :deck_cards, :name
    remove_column :deck_cards, :user_id  
    add_column :deck_cards, :name, :string
    add_column :deck_cards, :user_id, :integer
  end
end
