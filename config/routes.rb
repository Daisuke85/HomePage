Rails.application.routes.draw do
  #homeコントローラー
  root 'home#index'
  get  '/about',   to: 'home#about'
  get  '/contact', to: 'home#contact'
  post '/' => 'home#confirm'   # 確認アクション
end
