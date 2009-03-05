class AddClans < ActiveRecord::Migration
  def self.up
    Clan.new(:name => "Crab").save
    Clan.new(:name => "Crane").save
    Clan.new(:name => "Dragon").save
    Clan.new(:name => "Lion").save
    Clan.new(:name => "Mantis").save
    Clan.new(:name => "Phoenix").save
    Clan.new(:name => "Scorpion").save
    Clan.new(:name => "Spider").save
    Clan.new(:name => "Unicorn").save
    Clan.new(:name => "Minor/No longer in print").save
  end

  def self.down
  end
end
