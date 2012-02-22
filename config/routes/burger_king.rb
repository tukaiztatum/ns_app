Backstage3::Application.routes.draw do
  namespace :burger_king do
    resources :posts
  end
end