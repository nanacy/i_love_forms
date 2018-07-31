class UsersController < ApplicationController
  def accueil
  end
  
  def new
  	@user = User.new
  end
  def new2
  	@user = User.new
  end
  def new3
  	@user = User.new
  end

  def create
  	#fonctionne avec le formulaire : HTML & RUBY(form_tag)
  	@username = params["username"]
  	@email = params["email"]
  	@bio = params["bio"]
  	User.new(username: @username, email: @email, bio: @bio).save

  	redirect_to '/'
  end

  def createBis
  	#fonctionne avec le formulaire : RUBY(form_for)
  	@username = params["user"]["username"]
  	@email = params["user"]["email"]
  	@bio = params["user"]["bio"]
  	User.create(username: @username, email: @email, bio: @bio)

  	redirect_to '/'
  end
end
