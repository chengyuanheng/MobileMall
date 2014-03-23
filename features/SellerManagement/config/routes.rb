SellerManagement::Engine.routes.draw do
  resources :shop

  get "index", to:"shop#index"

  get "apply_recommend", to:"shop#apply_recommend"

  post "shop_logo", to:"shop#create_shop_logo"

  post "index", to:"shop#create_product"

  post "edit_product" , to:"shop#edit_product"

  match "delete_product/:id" ,to:"shop#delete_product" , :via=>:post


end
