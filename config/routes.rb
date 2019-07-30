Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  delete 'cocktails/:id', to: "cocktails#destroy", as: "delete_cocktail"
  delete 'doses/:id', to: "doses#destroy", as: "delete"
end



# DELETE "doses/25"
