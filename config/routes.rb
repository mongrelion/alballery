Alballery::Application.routes.draw do
  root to: 'pages#home'

  devise_for :users
end
