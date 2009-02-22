class Clan < ActiveRecord::Base
  belongs_to :card, :foreign_key => "clan_id"
  validates_presence_of :name
end
