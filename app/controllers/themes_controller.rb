class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end
  
  def show
    @theme = Theme.find(params[:id])
  end
  
  def new
    @theme = Theme.new
    respond_to do |wants|
      wants.html

    end
    
  end
  
  def create
    @theme = Theme.new(params[:theme])
    respond_to do |wants|
      if @theme.save
        wants.html do
          flash[:notice] = "Successfully created theme."
          redirect_to @theme
        end

      else
        wants.html { render :action => 'new' }
        
      end
    end
  end
  
  def edit
    @theme = Theme.find(params[:id])
    respond_to do |wants|
      wants.html

    end

  end
  
  def update
    @theme = Theme.find(params[:id])
    respond_to do |wants|
      if @theme.update_attributes(params[:theme])
        wants.html do
          flash[:notice] = "Successfully updated theme."
          redirect_to @theme
        end

      else
        wants.html { render :action => 'edit' }

      end
    end
  end
  
  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    flash[:notice] = "Successfully removed theme."
    redirect_to themes_url
  end
end
