class AddArticleUpdatedAt < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :updated_at, :datetime
  end
end
