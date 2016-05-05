class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find_by({:id => params[:id]})
    @photo_source = p.source
    @photo_caption = p.caption
    @photo_id = p.id
    render ("show.html.erb")
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("/photos")
  end
  def delete
    p = Photo.find_by({:id => params[:id]})
    p.destroy

    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({:id => params[:id]})
  end

  def update_row
    p = Photo.find_by({:id=>params[:id]})
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("show")
  end
end
