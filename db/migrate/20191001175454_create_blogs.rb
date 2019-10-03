class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :publication_date
      t.string :read_time
      t.string :image_url
      t.string :description
      t.string :link

    end
  end
end
