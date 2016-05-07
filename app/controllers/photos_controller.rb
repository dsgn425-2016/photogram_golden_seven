class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
    @photo = Photo.find_by({:id=>params[:id]})
  end

  def new_form
  end

  def create_row
    p=Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("http://localhost:3000/")
  end

  def destroy
    p=Photo.find_by({:id=>params[:id]})
    p.destroy
    redirect_to("http://localhost:3000/")
  end

  def edit_form
    @photo = Photo.find_by({:id=>params[:id]})
  end

  def update_row
    photo_old = Photo.find_by({:id=>params[:id]})
    photo_old.destroy
    photo_new = Photo.new
    photo_new.caption = params[:the_caption]
    photo_new.source = params[:the_source]
    photo_new.save
    # @photo = Photo.last
    redirect_to("http://localhost:3000/photos/"+photo_new[:id].to_s)
  end

end
