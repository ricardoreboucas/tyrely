class TiresController < ApplicationController
  # GET /tires
  # GET /tires.xml
  def index
    @tires = Tire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tires }
    end
  end

  # GET /tires/1
  # GET /tires/1.xml
  def show
    @tire = Tire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tire }
    end
  end

  # GET /tires/new
  # GET /tires/new.xml
  def new
    @tire = Tire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tire }
    end
  end

  # GET /tires/1/edit
  def edit
    @tire = Tire.find(params[:id])
  end

  # POST /tires
  # POST /tires.xml
  def create
    @tire = Tire.new(params[:tire])

    respond_to do |format|
      if @tire.save
        flash[:notice] = 'Tire was successfully created.'
        format.html { redirect_to(@tire) }
        format.xml  { render :xml => @tire, :status => :created, :location => @tire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tires/1
  # PUT /tires/1.xml
  def update
    @tire = Tire.find(params[:id])

    respond_to do |format|
      if @tire.update_attributes(params[:tire])
        flash[:notice] = 'Tire was successfully updated.'
        format.html { redirect_to(@tire) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tires/1
  # DELETE /tires/1.xml
  def destroy
    @tire = Tire.find(params[:id])
    @tire.destroy

    respond_to do |format|
      format.html { redirect_to(tires_url) }
      format.xml  { head :ok }
    end
  end
end
