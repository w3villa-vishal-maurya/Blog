class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :article
      t.integer :published_year
      t.integer :rating

      t.timestamps
    end
  end
end
