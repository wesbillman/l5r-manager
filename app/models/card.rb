class Card < ActiveRecord::Base
  #define relations
  has_many :deck_cards
  has_many :decks, :through => :deck_cards
  
  #for photo attachments
  has_attached_file :photo,
                    :styles => {
                    :thumb => "100x100#",
                    :small  => "150x150>"}
  
  
  #create validations
  validates_presence_of :name, :desc
  #validates_numericality_of :force, :chi, :gold_cost, :prov_str
  #validates_numericality_of :gold_prod, :start_honor, :personal_honor, :focus
  
end
