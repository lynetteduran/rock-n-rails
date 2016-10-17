Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#http verb+path, controller#action
	get "/records", to: "records#index", as: 'records'
	get "/records/:id", to: "records#show", as: 'record'
end
