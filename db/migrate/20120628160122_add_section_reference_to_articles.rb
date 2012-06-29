class AddSectionReferenceToArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.references :section
    end
  end
end
