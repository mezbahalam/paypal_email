class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :shirt_color
      t.string :shirt_name
      t.string :shirt_inches_from_top
      t.string :band_name
      t.string :bancamp_url
      t.string :user_email
      t.string :user_fullname
      t.string :big_image_url
      t.string :medium_image_url
      t.string :small_mockup
      t.string :big_mockup
      t.string :cloudinary_code
      t.string :height
      t.string :width
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
