class Card < ActiveRecord::Base
  #define relations
  has_many :deck_cards
  has_many :decks, :through => :deck_cards
  
  #create validations
  validates_presence_of :name, :desc
end
