class RemoveSectionIdAndWriterIdFromArticles < ActiveRecord::Migration
  def up
    change_table :articles do |t|
      t.remove :section_id
      t.remove :writer_id
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
