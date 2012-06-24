class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :content
      t.string :category
      t.string :title
      t.integer :writer_id

      t.timestamps
    end
  end
end
