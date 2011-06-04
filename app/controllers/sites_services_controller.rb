class SitesServicesController < ApplicationController
  # GET /sites_services
  # GET /sites_services.xml
  before_filter :authenticate_user!, :except => [:index]
  def index
    @sites_services = SitesService.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sites_services }
    end
  end

  # GET /sites_services/1
  # GET /sites_services/1.xml
  def show
    @sites_service = SitesService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sites_service }
    end
  end

  # GET /sites_services/new
  # GET /sites_services/new.xml
  def new
    @sites_service = SitesService.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sites_service }
    end
  end

  # GET /sites_services/1/edit
  def edit
    @sites_service = SitesService.find(params[:id])
  end

  # POST /sites_services
  # POST /sites_services.xml
  def create
    @sites_service = SitesService.new(params[:sites_service])

    respond_to do |format|
      if @sites_service.save
        format.html { redirect_to(@sites_service, :notice => 'Sites service was successfully created.') }
        format.xml  { render :xml => @sites_service, :status => :created, :location => @sites_service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sites_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sites_services/1
  # PUT /sites_services/1.xml
  def update
    @sites_service = SitesService.find(params[:id])

    respond_to do |format|
      if @sites_service.update_attributes(params[:sites_service])
        format.html { redirect_to(@sites_service, :notice => 'Sites service was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sites_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sites_services/1
  # DELETE /sites_services/1.xml
  def destroy
    @sites_service = SitesService.find(params[:id])
    @sites_service.destroy

    respond_to do |format|
      format.html { redirect_to(sites_services_url) }
      format.xml  { head :ok }
    end
  end
end
