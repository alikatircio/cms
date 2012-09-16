class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.boolean :status
      t.integer :project_id

      t.timestamps
    end
    add_index :pages, :project_id
  end
end
