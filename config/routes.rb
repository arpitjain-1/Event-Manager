Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "seller/dashboard", to: "seller#dashboard", as: "seller_dashboard"
  get "customer/dashboard", to: "customer#dashboard", as: "buyer_dashboard"

  root "index#index"
end
