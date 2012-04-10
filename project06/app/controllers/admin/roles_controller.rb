class Admin::RolesController < Admin::AdminController
  def index
    @roles = Role.paginate(:page => params[:page], :order => 'name asc', :per_page => 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @roles }
    end
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
    @role = Role.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @role }
    end
  end

  # GET /roles/new
  # GET /roles/new.json
  def new
    @role = Role.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @role }
    end
  end

  # GET /roles/1/edit
  def edit
    @role = Role.find(params[:id])
  end

  # POST /roles
  # POST /roles.json
  def create
    @role = Role.new(params[:role])

    respond_to do |format|
      if @role.save
        format.html { redirect_to admin_roles_path, :notice => 'Created role' }
        format.json { render :json => @role, :status => :created, :location => @role }
      else
        format.html { render :action => "new" }
        format.json { render :json => @role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /roles/1
  # PUT /roles/1.json
  def update
    @role = Role.find(params[:id])

    respond_to do |format|
      if @role.update_attributes(params[:role])
        format.html { redirect_to admin_roles_path, :notice => 'Updated role' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    respond_to do |format|
      format.html { redirect_to admin_roles_path }
      format.json { head :no_content }
    end
  end
end
