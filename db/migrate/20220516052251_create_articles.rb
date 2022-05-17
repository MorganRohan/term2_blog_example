class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :page
      t.text :paragraph
      t.integer :rank

      t.timestamps
    end
  end
end