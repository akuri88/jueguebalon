Jueguebalon::Application.routes.draw do

	resources :pages
	resources :posts
	
	match '/futmex',	:to => 'pages#futmex'
	match '/soccer',	:to => 'pages#soccer'
	match '/baseball',	:to => 'pages#baseball'
	match '/football',	:to => 'pages#football'
	
	match '/posts',		:to => 'posts#show'

	root :to => 'pages#home'
	
end
