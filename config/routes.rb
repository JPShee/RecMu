Rails.application.routes.draw do
	
  	devise_for :users
  	root 'welcome#index'
  	root to: 'welcome#index'
  	get "/app/views/likes/likes.html.erb", to: "likes#likes", as: "likes"
	# get "/app/views/messages/index.html.erb", to: "messages#index", as: "messages"
	get "/messages", to: "messages#index"
	get "/messages/new", to: "messages#new"
	get "/messages/received", to: "messages#received_messages"
	get "/messages/:id/reply", to: "messages#reply_message"
	post "/messages", to: "messages#create"
	get "/app/views/recs/rec.html.erb", to: "recs#rec", as: "recs"
	post "/messages/reply", to: "messages#create_reply"
	post "/app/likes", to: "likes#create", as: "submit_likes"
	get "/messages/replied", to: "messages#replied_messages"
end
