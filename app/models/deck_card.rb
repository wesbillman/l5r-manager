class DeckCard < ActiveRecord::Base
  belongs_to :card, :foreign_key => "card_id"
  belongs_to :deck, :foreign_key => "deck_id"
  
  validates_presence_of :card, :deck
end
