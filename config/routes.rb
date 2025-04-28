Rails.application.routes.draw do
  get("", { :controller => "pages", :action => "home"})

  get("/square/new", { :controller => "pages", :action => "square"})

  get("/square/results", { :controller => "pages", :action => "square_results"})

  get("/square_root/new", { :controller => "pages", :action => "square_root"})
end
