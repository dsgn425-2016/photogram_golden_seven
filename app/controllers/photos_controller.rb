class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
    render("show.html.erb")
  end

  def new_form


    render("new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

  #  render("create_row.html.erb")
  redirect_to("http://localhost:3000/photos/")
  end

  def destroy
    p = Photo.find_by( { :id => params[:id]} )
    p.destroy
    redirect_to("http://localhost:3000/photos/")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id] })

    render("edit_form.html.erb")
  end

  def update_row
    @photo = Photo.find_by({ :id => params[:id] })
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_source]
    @photo.save

    redirect_to("http://localhost:3000/photos/#{@photo.id}")
  end



end
