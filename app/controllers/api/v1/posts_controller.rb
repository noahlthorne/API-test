class Api::V1::PostsController < Api::V1::BaseController
  def index
    @posts = policy_scope(Post)
  end

  def show
    @post = Post.find(params[:id])
    authorize @post
  end
end
