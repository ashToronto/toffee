class PagesController < ApplicationController

  # All our controllers, which we will create, are going to
  # inherit from ApplicationController class. Which means that
  # all methods defined inside this class are going to be
  # available across all our controllers.

  def index
    @posts = Post.limit(5)
  end
end
