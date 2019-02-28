class PagesController < ApplicationController

  # All our controllers, which we will create, are going to
  # inherit from ApplicationController class. Which means that
  # all methods defined inside this class are going to be
  # available across all our controllers.

  def index
    @hobby_posts = Post.by_branch('hobby').limit(8)
    @study_posts = Post.by_branch('study').limit(8)
    @team_posts = Post.by_branch('team').limit(8)
  end
end
