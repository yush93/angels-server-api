class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :thumbnail
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
