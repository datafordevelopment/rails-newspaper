class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.stringwriter_id :content
      t.string :category

      t.timestamps
    end
  end
end
