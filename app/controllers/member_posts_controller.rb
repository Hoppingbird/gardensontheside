class MemberPostsController < ApplicationController
  def index
    @member_post = MemberPost.all
  end

  def new
    @member_post = MemberPost.new
  end

  def create
    @member_post = MemberPost.create(member_post_params)
    redirect_to member_posts_path
  end

  def edit
  end

  def show
    @member_post = MemberPost.find(params[:id])
  end

  def destroy
  end

  private

  def member_post_params
    params.require(:member_post).permit(:body, :title, :image)
  end
end
