class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :username
      t.string :photo_url
      t.text :blurb

      t.timestamps
    end
  end
end
