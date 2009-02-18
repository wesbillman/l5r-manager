class CardTypesController < ApplicationController
  # GET /card_types
  # GET /card_types.xml
  def index
    @card_types = CardType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @card_types }
    end
  end

  # GET /card_types/1
  # GET /card_types/1.xml
  def show
    @card_type = CardType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @card_type }
    end
  end

  # GET /card_types/new
  # GET /card_types/new.xml
  def new
    @card_type = CardType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @card_type }
    end
  end

  # GET /card_types/1/edit
  def edit
    @card_type = CardType.find(params[:id])
  end

  # POST /card_types
  # POST /card_types.xml
  def create
    @card_type = CardType.new(params[:card_type])

    respond_to do |format|
      if @card_type.save
        flash[:notice] = 'CardType was successfully created.'
        format.html { redirect_to(@card_type) }
        format.xml  { render :xml => @card_type, :status => :created, :location => @card_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @card_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /card_types/1
  # PUT /card_types/1.xml
  def update
    @card_type = CardType.find(params[:id])

    respond_to do |format|
      if @card_type.update_attributes(params[:card_type])
        flash[:notice] = 'CardType was successfully updated.'
        format.html { redirect_to(@card_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @card_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /card_types/1
  # DELETE /card_types/1.xml
  def destroy
    @card_type = CardType.find(params[:id])
    @card_type.destroy

    respond_to do |format|
      format.html { redirect_to(card_types_url) }
      format.xml  { head :ok }
    end
  end
end
