class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    # render("create_row.html.erb")
    redirect_to("http://localhost:3000/photos")
  end

  def new_form

  end

  def destroy
    p = Photo.find_by({ :id => params[:id] })
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def update_row
    p = Photo.find_by({ :id => params[:id] })
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos/")

    #how can you have it redirect to a specific page?
  end
end
