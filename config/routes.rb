Rails.application.routes.draw do

devise_for :users

devise_scope :user do
  get 'signup', to: 'devise/registrations#new'
  get 'login', to: 'devise/sessions#new'
  delete 'logout', to: 'devise/sessions#destroy'
end
root 'main#graf'

get 'contact', to: 'contact#follow', as: 'contact'
#get 'shop', to: '#trash', as: 'shop'
get 'menu', to: 'menu#model_menu', as: 'menu'

end





