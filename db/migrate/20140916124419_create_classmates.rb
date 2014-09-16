class CreateClassmates < ActiveRecord::Migration
  def change
    create_table :classmates do |t|
      t.string :name
      t.string :school
      t.boolean :gender
      t.boolean :bike

      t.timestamps
    end
  end
end
