class CreateNotesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :notes_tags do |t|
      t.integer :note_id
      t.integer :tag_id
    end
  end
end
