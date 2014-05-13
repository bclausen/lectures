Rails.application.routes.draw do
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
  post "signup"=>"users#post"


end
