class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :created_att, :datetime
    add_column :articles, :updated_att, :datetime  
  end
end
