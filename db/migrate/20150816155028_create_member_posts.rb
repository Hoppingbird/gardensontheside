class CreateMemberPosts < ActiveRecord::Migration
  def change
    create_table :member_posts do |t|
      t.text :message
      t.string :title

      t.timestamps null: false
    end
  end
end
