class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :commenter_name, :string
      t.column :thoughts, :text
      t.column :comment_id, :integer

      t.timestamps

    end
  end
end
