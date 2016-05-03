class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    #render("create_row.html.erb")
    redirect_to("/photos")
  end

  def destroy
    @photo = Photo.find_by({ :id => params[:id] })
    @photo.destroy
    #render("create_row.html.erb")
    redirect_to("/photos")
  end


    def edit_form
    @photo = Photo.find_by({ :id => params[:id] })
    @photo.caption = params[:caption]
    @photo.source = params[:source]

    @photo.save

    render("http://localhost.3000/edit_form.html.erb")

  end


  def update_row
    p = Photo.find_by({ :id => params[:id] })
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

redirect("http://localhost.3000/")
    end
#Next, write different logic in update_row to receive data from the form via the params hash, look up the correct row, actually make the changes, and then save them (similar to the create_row action). After you've done that work, you can redirect back to the index or maybe to the show page of the row that you just updated.

end
