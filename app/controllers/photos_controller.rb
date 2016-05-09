class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def edit_form
    @photoedit = Photo.find(params[:id])
  end

  def update_row
    p = Photo.find(params[:id])
    p.caption = params[:the_cation]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos")

  end

  def delete

    p = Photo.find(params[:id])
    p.destroy
    p.save

    # render("create-row.htnl.erb")
    redirect_to("http://localhost:3000/photos")

  end


  def create_row
    p = Photo.new
    p.caption = params[:the_cation]
    p.source = params[:the_source]
    p.save

    # render("create-row.htnl.erb")
    redirect_to("http://localhost:3000/photos")
  end


end
