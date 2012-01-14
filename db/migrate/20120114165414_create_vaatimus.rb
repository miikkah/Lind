class CreateVaatimus < ActiveRecord::Migration
  def change
    create_table :vaatimus do |t|
      t.string :nimi, :null => false
      t.string :selite
      t.string :profiilit

      t.timestamps
    end
  end
end
