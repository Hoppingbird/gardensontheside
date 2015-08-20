class MemberPostsController < ApplicationController
  def index
    @member_post = MemberPost.all
    #@member = User.find(@member_post.user_id)
  end

  def new
    @member_post = MemberPost.new
    authorize @member_post
  end

  def create
    @member_post = MemberPost.create(member_post_params)
    @member_post.user_id = current_user.id
    @member_post.save
    authorize @member_post
    redirect_to member_posts_path
  end

  def edit
    @member_post = MemberPost.find(params[:id])
  end

  def update
    @member_post = MemberPost.find(params[:id])
    @member_post.update(member_post_params)
    @member_post.user_id = current_user.id
    redirect_to member_posts_path
  end

  def show
    @member_post = MemberPost.find(params[:id])
    @member = User.find(params[:user_id])
  end

  def destroy
    @member_post = MemberPost.find(params[:id])
    @member_post.destroy
    redirect_to member_posts_path
  end

  private

  def member_post_params
    params.require(:member_post).permit(:body, :title, :image, :user_id)
  end
end


