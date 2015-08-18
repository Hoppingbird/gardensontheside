class AddUserToMemberPosts < ActiveRecord::Migration
  def change
    add_reference :member_posts, :user, index: true, foreign_key: true
  end
end
