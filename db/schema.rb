# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_02_19_143222) do
  create_table "student_scores", force: :cascade do |t|
    t.string "sbd"
    t.float "toan"
    t.float "ngu_van"
    t.float "ngoai_ngu"
    t.float "vat_li"
    t.float "hoa_hoc"
    t.float "sinh_hoc"
    t.float "lich_su"
    t.float "dia_li"
    t.float "gdcd"
    t.string "ma_ngoai_ngu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sbd"], name: "index_student_scores_on_sbd", unique: true
  end

end
