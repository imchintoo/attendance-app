Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :classroom do
        resource :students do
          get 'api/students', to: 'students#show'
          get 'api/students/:id', to: 'students#show_student'
        end
      end
    end
  end
end
