class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
    render ("new_form.html.erb")
  end

  def show
    @photo = Photo.find_by ({ :id => params[:id] })
    render ("show.html.erb")
  end

  def create_row
    @p = Photo.new
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save
    redirect_to("/photos")
  end

  def delete_row
    @d = Photo.find(params[:id])
    @d.destroy
    redirect_to("/photos")
  end

  def edit_row
    @photo = Photo.find_by ({ :id => params[:id] })
  end

  def update_row
    @u = Photo.find_by ({ :id => params[:id] })
    @u.caption = params[:new_caption]
    @u.source = params[:new_source]
    @u.save
    redirect_to("/photos/#{params[:id]}")
  end
end
