class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find.by({ :id => params[:id] })
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to(http://localhost:3000/photos)
  end

  def destroy
  end

  def edit_form
  end

end
