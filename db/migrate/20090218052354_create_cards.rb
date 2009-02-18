class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :name
      t.text :desc
      t.integer :card_type_id
      t.integer :clan_id
      t.integer :user_id
      t.string :ability
      t.integer :force
      t.integer :chi
      t.string :honor_requirement
      t.integer :gold_cost
      t.integer :prov_str
      t.integer :gold_prod
      t.integer :start_honor
      t.integer :personal_honor
      t.integer :focus

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
