class AddCardTypes < ActiveRecord::Migration
  def self.up
    CardType.new(:name=>"Action").save; 
    CardType.new(:name=>"Event").save;
    CardType.new(:name=>"Follower").save;
    CardType.new(:name=>"Holding").save;
    CardType.new(:name=>"Item").save;
    CardType.new(:name=>"Personality").save;
    CardType.new(:name=>"Ring").save;
    CardType.new(:name=>"Region").save;
    CardType.new(:name=>"Spell").save;
    CardType.new(:name=>"Stronghold").save;
  end

  def self.down
  end
end
