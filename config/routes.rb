Rails.application.routes.draw do
  #get 'admin/index'
  get 'admin' => 'admin#index'
  
    controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'

  scope '(:locale)' do
    resources :users
    resources :pay_types
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store_index'
  end
  
  # resources :products
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :line_items do
    #member do
    #  put 'decrement'
    #end
    put 'decrement', on: :member
  end

end
