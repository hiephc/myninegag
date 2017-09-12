module Users
  class PostsController < Users::BaseController
    before_action :require_post!, only: [:show]
    def new
      @post = Post.new
    end
    def show
    end
    def create
      @post = Post.create post_params

      if @post.persisted?
        redirect_to users_post_path(@post)
      else
        render :new
      end
    end

    private
      def post_params
        params.permit(:title, :photo)
      end
      def require_post!
        @post = Post.find(params[:id])
      end
  end
end
