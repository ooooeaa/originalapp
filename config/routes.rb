Rails.application.routes.draw do
 devise_for :users
 root to:"tops#index"
 #resources :tops
 resources :procedures
 resources :calculations, only: [:index] do
  collection do
    get 'bmi'
    get 'gamma'
    get 'drop'
  end
end

end
