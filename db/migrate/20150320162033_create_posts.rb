class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :entry, :text
      t.column :title, :string
      t.column :date, :date

      t.timestamps
    end
  end
end
