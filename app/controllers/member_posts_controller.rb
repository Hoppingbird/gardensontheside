class MemberPostsController < ApplicationController
  def index
    @member_posts = MemberPost.all
  end

  def new
    @member_post = MemberPost.new
    authorize @member_post
  end

  def create
    @member_post = current_user.member_posts.build(member_post_params)        ##MemberPost.create(member_post_params)
    authorize @member_post
    if @member_post.save
      flash[:notice] = "Post created successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end
    redirect_to member_posts_path
  end

  def edit
    @member_post = MemberPost.find(params[:id])
    #@member_post.user = current_user
  end

  def update
    @member_post = MemberPost.find(params[:id])
    @member_post.update(member_post_params)
    #@member_post.user = current_user
    authorize @member_post
    if @member_post.update_attributes(member_post_params)
      flash[:notice] = "Post updated successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end
    redirect_to member_posts_path
  end

  def show
    @member_post = MemberPost.find(params[:id])
    @member = User.find(params[:user_id])
  end

  def destroy
    @member_post = MemberPost.find(params[:id])
    @member_post.destroy
    authorize @member_post
    if @member_post.destroy
      flash[:notice] = "Post deleted successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end
    redirect_to member_posts_path
  end

  private

  def member_post_params
    params.require(:member_post).permit(:body, :title, :image, :user_id)
  end
end


