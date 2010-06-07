class FaultsController < ApplicationController
  # GET /faults
  # GET /faults.xml
  def index
    @faults = Fault.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @faults }
    end
  end

  # GET /faults/1
  # GET /faults/1.xml
  def show
    @fault = Fault.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fault }
    end
  end

  # GET /faults/new
  # GET /faults/new.xml
  def new
    @fault = Fault.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fault }
    end
  end

  # GET /faults/1/edit
  def edit
    @fault = Fault.find(params[:id])
  end

  # POST /faults
  # POST /faults.xml
  def create
    @fault = Fault.new(params[:fault])

    respond_to do |format|
      if @fault.save
        flash[:notice] = 'Fault was successfully created.'
        format.html { redirect_to(@fault) }
        format.xml  { render :xml => @fault, :status => :created, :location => @fault }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fault.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /faults/1
  # PUT /faults/1.xml
  def update
    @fault = Fault.find(params[:id])

    respond_to do |format|
      if @fault.update_attributes(params[:fault])
        flash[:notice] = 'Fault was successfully updated.'
        format.html { redirect_to(@fault) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fault.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /faults/1
  # DELETE /faults/1.xml
  def destroy
    @fault = Fault.find(params[:id])
    @fault.destroy

    respond_to do |format|
      format.html { redirect_to(faults_url) }
      format.xml  { head :ok }
    end
  end
end
