Rails.application.routes.draw do
	root 'pages#index', via: :get

	resources :decks, only: [:index, :show, :new, :create] do
		resources :cards, only: [:show, :new, :create]
		patch "cards/:id", to: "cards#check_answer"
	end
end
