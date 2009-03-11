class Card < ActiveRecord::Base
  #define relations
  has_many :deck_cards
  has_many :decks, :through => :deck_cards
  
  #for photo attachments
  has_attached_file :photo,
                    :styles => {
                    :avatar => "40x40#",
                    :thumb => "100x100#",
                    :small  => "150x150>",
                    :medium => "300x300>",
                    :large => "500x500>"},
                    :default_url => "/assets/:style.jpg"
                    
  
  
  #create validations
  validates_presence_of :name, :desc, :card_type
  validates_uniqueness_of :name
  validates_attachment_size :photo, :less_than => 1.megabyte, :message =>"must be less than 1MB"
  
  def user
    User.find(self.user_id)
  end
end
