Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  #User Pages
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })

  #Photo Pages
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy"})
  post("/insert_photo_record", { :controller => "photos", :action => "create" })
  post("/update_photo/:path_id", { :controller => "photos", :action => "update" })

  #Comment
  post("/add_comment", { :controller => "comments", :action => "create" })

end
