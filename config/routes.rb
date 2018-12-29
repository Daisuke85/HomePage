Rails.application.routes.draw do
  #homeコントローラー
  root 'home#index'
  get  '/about',   to: 'home#about'
  get  '/contact', to: 'home#contact'
end
