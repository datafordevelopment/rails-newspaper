class AddWriterReferenceToSections < ActiveRecord::Migration
  def change
    change_table :sections do |t|
      t.references :writer
    end
  end
end
