class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_photo
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos")
  end

  def destroy
    p = Photo.find_by({ :id => params[:id]})
    p.destroy
    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def update_photo
    p = Photo.find_by({ :id => params[:id]})
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos")
  end

end
