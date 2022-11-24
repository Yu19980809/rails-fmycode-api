class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.string :picture_url

      t.timestamps
    end
  end
end
