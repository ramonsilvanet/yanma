Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      
      get 'bikes/:bike_id', controller: 'bikes', action: 'show'
      post 'bikes/:bike_id/lock', controller: 'bikes', action: 'unlock'
      post 'bikes/:bike_id/unlock', controller: 'bikes', action: 'lock'
      
      patch 'bikes/:bike_id/lock', controller: 'bikes', action: 'maintenance'
    end
  end
end
