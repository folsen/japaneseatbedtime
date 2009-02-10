class JapanesesController < ApplicationController
  before_filter :login_required, :except => [ :index ]
  # GET /japaneses
  # GET /japaneses.xml
  def index
    @japaneses = Japanese.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @japaneses }
    end
  end

  # GET /japaneses/1
  # GET /japaneses/1.xml
  def show
    @japanese = Japanese.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @japanese }
    end
  end

  # GET /japaneses/new
  # GET /japaneses/new.xml
  def new
    @japanese = Japanese.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @japanese }
    end
  end

  # GET /japaneses/1/edit
  def edit
    @japanese = Japanese.find(params[:id])
  end

  # POST /japaneses
  # POST /japaneses.xml
  def create
    @japanese = Japanese.new(params[:japanese])

    respond_to do |format|
      if @japanese.save
        flash[:notice] = 'Japanese was successfully created.'
        format.html { redirect_to(@japanese) }
        format.xml  { render :xml => @japanese, :status => :created, :location => @japanese }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @japanese.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /japaneses/1
  # PUT /japaneses/1.xml
  def update
    @japanese = Japanese.find(params[:id])

    respond_to do |format|
      if @japanese.update_attributes(params[:japanese])
        flash[:notice] = 'Japanese was successfully updated.'
        format.html { redirect_to(@japanese) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @japanese.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /japaneses/1
  # DELETE /japaneses/1.xml
  def destroy
    @japanese = Japanese.find(params[:id])
    @japanese.destroy

    respond_to do |format|
      format.html { redirect_to(japaneses_url) }
      format.xml  { head :ok }
    end
  end
end
