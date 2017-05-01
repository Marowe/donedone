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

ActiveRecord::Schema.define(version: 20170430084311) do

  create_table "histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "issue_id"
    t.integer  "history_id"
    t.datetime "created_on"
    t.string   "action"
    t.string   "description"
    t.string   "creator"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["issue_id"], name: "index_histories_on_issue_id", using: :btree
  end

  create_table "issues", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id"
    t.integer  "order_number"
    t.string   "title"
    t.string   "description"
    t.datetime "created_on"
    t.datetime "last_updated_on"
    t.string   "last_updater"
    t.string   "tester"
    t.string   "fixer"
    t.string   "creator"
    t.string   "priority"
    t.string   "status"
    t.date     "due_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["project_id"], name: "index_issues_on_project_id", using: :btree
  end

  create_table "local_issues", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "desription"
    t.integer  "priority_level_id"
    t.integer  "fixer_id"
    t.integer  "tester_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "histories", "issues"
  add_foreign_key "issues", "projects"
end
