# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150607045014) do

  create_table "uploads", force: true do |t|
    t.string   "shirt_color"
    t.string   "shirt_name"
    t.string   "shirt_inches_from_top"
    t.string   "band_name"
    t.string   "bancamp_url"
    t.string   "user_email"
    t.string   "user_fullname"
    t.string   "big_image_url"
    t.string   "medium_image_url"
    t.string   "small_mockup"
    t.string   "big_mockup"
    t.string   "cloudinary_code"
    t.string   "height"
    t.string   "width"
    t.string   "stripe_customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "paypal_email"
  end

end
