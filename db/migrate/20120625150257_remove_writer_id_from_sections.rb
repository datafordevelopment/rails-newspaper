class RemoveWriterIdFromSections < ActiveRecord::Migration
  def up
    change_table :sections do |t|
      t.remove :writer_id
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
