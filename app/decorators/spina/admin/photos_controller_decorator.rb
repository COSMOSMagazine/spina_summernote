# module Spina
#   module Admin
#     class PhotosController < AdminController
#       def summernote_select
#         params[:format] = :js
#
#         @photos = Spina::Photo.sorted.paginate(params[:page])
#         @photo = Spina::Photo.new
#
#         if params[:page].present?
#           render  :trix_infinite_scroll
#         else
#           render :summernote_select
#         end
#       end
#
#       def summernote_insert
#         @photo = Photo.find(params[:photo_id])
#       end
#     end
#   end
# end
