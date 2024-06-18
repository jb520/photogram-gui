class PhotosController < ApplicationController

  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({ :created_at => :desc })
    render({ :template => "photo_templates/index"})
  end

  def show
    url_id = params.fetch("path_id")
    @the_photo = Photo.where({ :id => url_id }).at(0)
    render({ :template => "photo_templates/show"})
  end

  def destroy
    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)
    the_photo.destroy

    redirect_to("/photos")
  end

  def create
    p_image = params.fetch("input_image")
    p_caption = params.fetch("input_caption")
    p_owner_id = params.fetch("input_owner_id")

    a_new_photo = Photo.new
    a_new_photo.image = p_image
    a_new_photo.caption = p_caption
    a_new_photo.owner_id = p_owner_id

    a_new_photo.save

    redirect_to("/photos/" + a_new_photo.id.to_s)
  end
end
