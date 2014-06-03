Rails.application.routes.draw do
  root :to => "sessions#new"

  get "lecturers" => "lecturers#get"
  post "lecturers" => "lecturers#post"
  delete"lecturers/:id"=>"lecturers#delete",:as=>:lecturer
  get "lecturers/:id"=>"lecturers#edit"
  patch "lecturers/:id"=>"lecturers#patch"

  get "lectures" => "lectures#get"
  post "lectures" => "lectures#post"
  delete"lectures/:id"=>"lectures#delete",:as=>:lecture
  get "lectures/:id"=>"lectures#edit"
  patch "lectures/:id"=>"lectures#patch"

  get "signup"=>"users#new",:as=>:users
  post "signup"=>"users#create"
  delete"users/:id"=>"users#delete"
  get "users/:id"=>"users#edit"

  get "signin" => "sessions#new", :as => :sessions
end
