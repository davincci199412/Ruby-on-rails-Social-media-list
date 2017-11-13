=begin
# define match URL and Controller
# --------------------------------------
# @author Phonpanom
# @description  define match URL and Controller
# @version  1.0
# ---------------------------------------
# @last edit 11/04/2017
# @by Phonpanom
=end

Rails.application.routes.draw do
  resources :legislators
  resources :posts
  resources :customers


  get 'home/index'
  root :to => "posts#list"

  # legislator list route
  get 'legislator/list',to: 'legislators#list'

  # client list route
  match 'client/list' => 'clients#list', :via => :get
  match 'client/list' => 'clients#list', :via => :post

  # post list route
  get 'post/list',to: 'posts#list'

  # legislator's post list route
  get 'post/list_customer',to: 'posts#list_customer'

end
