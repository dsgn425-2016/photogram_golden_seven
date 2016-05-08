class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def new_form
  render (new.html.erb)
  end

  def create_row
    new_row = Photo.new
    new_row.source = params["the source"]
    new_row.caption = params["the caption"]
    new_row.save
    redirect_to("http://localhost.3000/photos")
  end

  def show
      @current_photo = Photo.find(params[:id])
  end

  def delete
   @current_photo = Photo.find(params[:id])
   @current_photo.destroy
   redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @current_photo = Photo.find(params[:id])
  end

  def update
    @current_photo = Photo.find(params[:id])
    @current_photo.caption = params["the_caption"]
    @current_photo.source = params["the_source"]
    @current_photo.save
    redirect_to("http://localhost:3000/photos")
  end


end
