class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :parentId
      t.string :name

      t.timestamps
    end
  end
end
