class RenameCommentId < ActiveRecord::Migration
  def change
    rename_column :comments, :comment_id, :post_id

  end
end
