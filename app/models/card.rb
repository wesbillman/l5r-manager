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
  validates_uniqueness_of :name
  validates_attachment_size :photo, :less_than => 1.megabyte, :message =>"must be less than 1MB"
  
end
