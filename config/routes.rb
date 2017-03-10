Rails.application.routes.draw do
  	devise_for :users
  	root 'welcome#index'
  	root to: 'welcome#index'
 	get "/app/views/likes/likes.html.erb", to: "likes#likes", as: "likes"
	get "/app/views/messages/mess.html.erb", to: "messages#mess", as: "messages"
	get "/app/views/recs/rec.html.erb", to: "recs#rec", as: "recs"
	

end
