Rails.application.routes.draw do

#  resources :destinations, :only => [] do 
#    member do
#      get :show
#      patch :update
#      get :edit
#      delete :destroy
#    end
#
#    collection do
#      get :index
#      get :new
#      post :create 
#    end
#  end

  resources :destinations do

    resources :to_do_items

  end
end
