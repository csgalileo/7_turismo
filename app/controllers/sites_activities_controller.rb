class SitesActivitiesController < ApplicationController
  # GET /sites_activities
  # GET /sites_activities.xml
   before_filter :authenticate_user!, :except => [:index] 
  def index
    @sites_activities = SitesActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sites_activities }
    end
  end

  # GET /sites_activities/1
  # GET /sites_activities/1.xml
  def show
    @sites_activity = SitesActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sites_activity }
    end
  end

  # GET /sites_activities/new
  # GET /sites_activities/new.xml
  def new
    @sites_activity = SitesActivity.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sites_activity }
    end
  end

  # GET /sites_activities/1/edit
  def edit
    @sites_activity = SitesActivity.find(params[:id])
  end

  # POST /sites_activities
  # POST /sites_activities.xml
  def create
    @sites_activity = SitesActivity.new(params[:sites_activity])
	@redirsiteid = params[:siteid]
    respond_to do |format|
      if @sites_activity.save
		if @redirsiteid == nil or @redirsiteid.to_s == ""
			format.html { redirect_to(@sites_activity, :notice => 'Sites activity was successfully created.') }
			format.xml  { render :xml => @sites_activity, :status => :created, :location => @sites_activity }
		else
			@site = Site.find_by_id(@redirsiteid)
			format.html { redirect_to(@site, :notice => 'Site Activity was successfully created.' ) }			
		end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sites_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sites_activities/1
  # PUT /sites_activities/1.xml
  def update
    @sites_activity = SitesActivity.find(params[:id])

    respond_to do |format|
      if @sites_activity.update_attributes(params[:sites_activity])
        format.html { redirect_to(@sites_activity, :notice => 'Sites activity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sites_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sites_activities/1
  # DELETE /sites_activities/1.xml
  def destroy
    @sites_activity = SitesActivity.find(params[:id])
    @sites_activity.destroy

    respond_to do |format|
      format.html { redirect_to(sites_activities_url) }
      format.xml  { head :ok }
    end
  end
end
