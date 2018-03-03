class AddPostStateToNotice < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :post_state, :string, default: "评论开启"
  end
end
