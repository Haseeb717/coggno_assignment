class CreateBookTags < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tags, id: :uuid do |t|
      t.references :book, null: false, foreign_key: true, type: :uuid
      t.references :tag, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
