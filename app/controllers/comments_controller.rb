class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.xml
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.new(params[:comment])
	@rediroriginid = params[:rediroriginid]
	@redirorigin = params[:redirorigin]

    respond_to do |format|
		
      if @comment.save 
		if @rediroriginid == nil or @rediroriginid.to_s == ""
			format.html { redirect_to(@comment, :notice => 'Comment was successfully created.') }
			format.xml  { render :xml => @comment, :status => :created, :location => @comment }
		else
			if @redirorigin.to_s == "2"
				@event = Event.find_by_id(@rediroriginid)
				format.html { redirect_to(@event, :notice => 'Comment was successfully created.') }
			elsif @redirorigin.to_s == "1" 
		
			end
		end    

	    else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
	end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(@comment, :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
    end
  end
end
