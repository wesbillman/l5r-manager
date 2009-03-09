class DeckCardsController < ApplicationController
  # GET /deck_cards
  # GET /deck_cards.xml
  def index
    @deck_cards = DeckCard.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @deck_cards }
    end
  end

  # GET /deck_cards/1
  # GET /deck_cards/1.xml
  def show
    @deck_card = DeckCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @deck_card }
    end
  end

  # GET /deck_cards/new
  # GET /deck_cards/new.xml
  def new
    @deck_card = DeckCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @deck_card }
    end
  end

  # GET /deck_cards/1/edit
  def edit
    @deck_card = DeckCard.find(params[:id])
  end

  # POST /deck_cards
  # POST /deck_cards.xml
  def create
    @deck_card = DeckCard.new(params[:deck_card])

    respond_to do |format|
      if @deck_card.save
        flash[:notice] = 'DeckCard was successfully created.'
        format.html { redirect_to(@deck_card) }
        format.xml  { render :xml => @deck_card, :status => :created, :location => @deck_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @deck_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /deck_cards/1
  # PUT /deck_cards/1.xml
  def update
    @deck_card = DeckCard.find(params[:id])

    respond_to do |format|
      if @deck_card.update_attributes(params[:deck_card])
        flash[:notice] = 'DeckCard was successfully updated.'
        format.html { redirect_to(@deck_card) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @deck_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /deck_cards/1
  # DELETE /deck_cards/1.xml
  def destroy
    @deck_card = DeckCard.find(params[:id])
    @deck_card.destroy

    respond_to do |format|
      format.html { redirect_to(@deck_card.deck) }
      format.xml  { head :ok }
    end
  end
end
