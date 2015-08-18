class MembersController < ApplicationController
  def index
    @member = User.all
    # @member_posts = @member.MemberPost.all
  end
end
