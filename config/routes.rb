Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do

    resources :photos do
      collection do
        get 'summernote_select/:object_id' => 'photos#summernote_select', as: :summernote_select
        post 'summernote_insert/:object_id' => 'photos#summernote_insert', as: :summernote_insert
      end
    end
  end
end
