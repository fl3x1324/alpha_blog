class AddArticleCreatedAt < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :created_at, :datetime
  end
end
