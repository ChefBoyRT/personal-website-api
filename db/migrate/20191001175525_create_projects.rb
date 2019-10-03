class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :language_1
      t.string :language_2
      t.string :image_url
      t.string :description
      t.string :link

    end
  end
end
