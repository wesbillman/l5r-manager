class JavascriptsController < ApplicationController
  def dynamic_cards
    @cards = Card.find(:all)
  end
end
