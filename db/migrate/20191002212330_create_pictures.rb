class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :location
      t.string :date
      t.string :description
      t.string :image_url

    end
  end
end
