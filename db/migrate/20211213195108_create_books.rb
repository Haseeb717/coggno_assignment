class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books, id: :uuid do |t|
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
