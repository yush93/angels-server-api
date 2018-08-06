class CreateAssociations < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key "projects", "users", name: "project_users_id_fkey"
    add_foreign_key "contents", "projects", name: "content_project_id_fkey"
  end
end
