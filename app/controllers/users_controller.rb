class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index" })
  end

  def show
    url_username = params.fetch("path_username")
    @the_user = User.where({ :username => url_username }).at(0)
    render({ :template => "user_templates/show" })
  end

  def create
    u_name = params.fetch("input_username")

    new_user = User.new
    new_user.username = u_name

    new_user.save

    redirect_to("/users/" + new_user.username)
  end

  def update
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    update_name = params.fetch("input_username")
    
    the_user.username = update_name
    the_user.save

    redirect_to("/users/" + the_user.username)

  end

end
