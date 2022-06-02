 check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_02_072659) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.text "content"
  end

end
