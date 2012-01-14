class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|
      t.string :name
      t.string :description
      t.string :profiles

      t.timestamps
    end
  end
end
