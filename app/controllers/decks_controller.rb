require 'rubygems'
require 'RMagick' # Don't use a capital 'R'.

class DecksController < ApplicationController
  before_filter :login_required, :only => [:index, :new, :edit, :update]
  # GET /decks
  # GET /decks.xml
  def index
    @decks = Deck.find(:all, :order => 'name ASC', :conditions => ['user_id = ?', "#{current_user.id}"])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @decks }
    end
  end

  # GET /decks/1
  # GET /decks/1.xml
  def show
    @deck = Deck.find(params[:id])
    @user = User.find(@deck.user_id)
    @cards = Card.find(:all)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @deck }
    end
  end

  # GET /decks/new
  # GET /decks/new.xml
  def new
    @deck = Deck.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @deck }
    end
  end

  # GET /decks/1/edit
  def edit
    @deck = Deck.find(params[:id])
  end
  
  def add_card
    @deck = Deck.find(params[:id])
    @deck_card = @deck.deck_cards.build(params[:deck_card])
    
    if @deck_card.save
      flash[:notice] = 'Card was added successfully'
      redirect_to(:action => 'show', :id => @deck.id)
    else
      render(:template => 'deck_card/deck_card')
    end
  end

  # POST /decks
  # POST /decks.xml
  def create
    @deck = Deck.new(params[:deck])

    respond_to do |format|
      if @deck.save
        flash[:notice] = 'Deck was successfully created.'
        format.html { redirect_to(@deck) }
        format.xml  { render :xml => @deck, :status => :created, :location => @deck }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @deck.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /decks/1
  # PUT /decks/1.xml
  def update
    @deck = Deck.find(params[:id])

    respond_to do |format|
      if @deck.update_attributes(params[:deck])
        flash[:notice] = 'Deck was successfully updated.'
        format.html { redirect_to(@deck) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @deck.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /decks/1
  # DELETE /decks/1.xml
  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    respond_to do |format|
      format.html { redirect_to(decks_url) }
      format.xml  { head :ok }
    end
  end
end
