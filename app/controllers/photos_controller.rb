class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({:id =>params[:id]})
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos")
  end
  def delete
    p = Photo.find(params[:id])
    p.destroy
    redirect_to("http://localhost:3000/photos")
  end
  def edit_form
    @photo = Photo.find(params[:id])
  end
  def update_row
    @photo = Photo.find(params[:id])
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_source]
    @photo.save
    redirect_to("http://localhost:3000/photos/"+@photo.id.to_s)
  end
end
