class AddWriterReferenceToArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.references :writer
    end
  end
end
