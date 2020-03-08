Rails.application.routes.draw do
  namespace :api do
    get "/contacts" => "contacts#index"
    get "/one_contact_url" => "contacts#one_contact_action"
  end
end
