Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get("/flexible/square/:x", { :controller => "calculations", :action => "flex_square"})

get("/flexible/square_root/:x", { :controller => "calculations", :action => "flex_root"})

get("/flexible/payment/:x", { :controller => "calculations", :action => "flex_pmt"})

get("/square/new", {:controller => "calculations", :action => "square_form"})

end
