class HomepageController < ApplicationController
  def index
    @posts = Post.all
  end
end
