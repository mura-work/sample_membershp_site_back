class CreateContentMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :content_movies do |t|
      t.string :title
      t.boolean :is_public
      t.string :category
      t.string :image
      t.text :movie
      t.timestamps
    end
  end
end
