Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do      
      get 'bikes/:bike_id', controller: 'bikes', action: 'show'

      get 'stations/:station_id/generate_password/:user_id', controller: 'stations', action: 'generate_password'
    end
  end
end
