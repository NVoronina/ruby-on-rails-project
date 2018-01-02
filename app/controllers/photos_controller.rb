class PhotosController < ApplicationController
#  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /photos
  def show
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
    @photos = Photo.all
  end

  def create
    @photo = Photo.new(photo_params.merge(user_id: current_user.id).merge(post_id: session[:post]))
    if @photo.save
      redirect_to '/user-posts', notice: 'Обьявление успешно создано.'
    else
      redirect_to '/posts/new', error: 'Ошибка добавления фотографии.'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
