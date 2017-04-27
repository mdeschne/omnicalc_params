Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get("/square/new", {:controller => "calculations", :action => "square_form"})
get("/square/results", {:controller => "calculations", :action => "square"})

get("/flexible/square/:x", { :controller => "calculations", :action => "flex_square"})

get("/flexible/square_root/:x", { :controller => "calculations", :action => "flex_root"})

get("/flexible/payment/:x/:y/:z", { :controller => "calculations", :action => "flex_pmt"})

get("/flexible/random/:min/:max", { :controller => "calculations", :action => "flex_rand"})



end
