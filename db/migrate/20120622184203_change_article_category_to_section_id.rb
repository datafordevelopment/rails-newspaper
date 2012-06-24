class ChangeArticleCategoryToSectionId < ActiveRecord::Migration
  def up
    change_table :articles do |t|
      t.remove :category
      t.integer :section_id
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
