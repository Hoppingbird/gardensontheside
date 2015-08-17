class AddAttachmentImageToMemberPosts < ActiveRecord::Migration
  def self.up
    change_table :member_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :member_posts, :image
  end
end
