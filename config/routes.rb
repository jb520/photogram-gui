Rails.application.routes.draw do
  #User Pages
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })

  #Photo Pages
  #get("/photos", { :controller => "photos", :action => "index" })
  #get("/photos/:path_id", { :controller => "photos", :action => "show" })

end
