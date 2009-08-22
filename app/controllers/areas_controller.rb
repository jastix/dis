class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
    respond_to do |wants|
      wants.html

    end

  end

  def create
    @area = Area.new(params[:area])
    respond_to do |wants|
      if @area.save
        wants.html do
          flash[:notice] = "New area created."
          redirect_to @area
        end

      else
        wants.html do
        flash[:warning] = "Area can\'t be created."
         render :action => 'new'
          end
      end
    end
  end

  def edit
    @area = Area.find(params[:id])
    respond_to do |wants|
      wants.html

    end

  end

  def update
    @area = Area.find(params[:id])
    respond_to do |wants|
      if @area.update_attributes(params[:area])
        wants.html do
          flash[:notice] = "Successfully updated area."
          redirect_to @area
        end

      else
        wants.html { render :action => 'edit' }

      end
    end
  end

  def destroy
    @area = Area.find(params[:id])
    @area.destroy
    flash[:notice] = "Successfully removed area."
    redirect_to areas_url
  end
end

