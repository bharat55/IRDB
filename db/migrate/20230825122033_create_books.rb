class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author_name
      t.string :tag_line
      t.datetime :published_at
      t.string :category
      t.text :summary

      t.timestamps
    end
  end
end
