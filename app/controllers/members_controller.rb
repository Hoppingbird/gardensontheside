class MembersController < ApplicationController
  def index
    @member = User.all
    # @member_posts = @member.MemberPost.all
  end

  def show
    @member = User.all
    #@user = User.find(params[:id])
    #@admin = @user.role =='admin'
  end
end
