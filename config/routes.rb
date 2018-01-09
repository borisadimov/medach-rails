Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root 'home#index'
  ActiveAdmin.routes(self)
  namespace :api do
    resources :articles do
      collection do
        get 'all_tags'
        get 'by_tag/:tag_name', action: :by_tag, as: :by_tag
        get 'search'
        get 'tags_count'
        get 'paginate/:page', action: :paginate, as: :paginate
      end
    end
    resources :images do

    end
  end
  get '*path' => 'home#index'
end
