class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first
      t.text :first
      t.string :last
      t.text :last
      t.string :birth
      t.text :birth
      t.string :description
      t.text :description
      t.string :gender
      t.text :gender
      t.string :blood
      t.text :blood
      t.references :hospital, index: true

      
    end
    
  end
end
