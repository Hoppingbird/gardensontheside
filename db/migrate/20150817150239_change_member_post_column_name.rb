class ChangeMemberPostColumnName < ActiveRecord::Migration
  def self.up
    rename_column :member_posts, :message, :body
  end
end
