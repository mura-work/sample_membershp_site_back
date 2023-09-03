class CreateContentMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :content_movies do |t|
      t.string :title, null: false
      t.boolean :is_public, default: true, null: false
      t.string :category
      t.string :content_image
      t.timestamps
    end
  end
end
