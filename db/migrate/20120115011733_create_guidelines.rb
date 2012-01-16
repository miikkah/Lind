class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|
      t.integer :guidelineType
      t.string :name
      t.string :description1
      t.string :description2
      t.string :profiles

      t.timestamps
    end
  end
end
