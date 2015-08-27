Rails.application.routes.draw do

  devise_for :users

  get 'about/index'

  get 'blog/index'

  post 'member/edit', to: 'members#edit', as: :member_edit

  resources :contacts, only: [:new, :create]

  resources :members

  resources :member_posts

  get 'tools/index'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'


end
