Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :cocktails, only: [ :index, :show, :create, :new ] do
      resources :doses, only: [ :create, :destroy]
    end
    root "cocktails#index"
  end
end
