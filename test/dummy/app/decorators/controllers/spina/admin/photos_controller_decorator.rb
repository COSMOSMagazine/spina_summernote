Spina::Admin::PhotosController.class_eval do
  def summernote_select
    params[:format] = :js

    @photos = Spina::Photo.sorted.paginate(params[:page])
    @photo = Spina::Photo.new

    if params[:page].present?
      render  :trix_infinite_scroll
    else
      render :summernote_select
    end
  end

  def summernote_insert
    @photo = Spina::Photo.find(params[:photo_id])
  end
end
