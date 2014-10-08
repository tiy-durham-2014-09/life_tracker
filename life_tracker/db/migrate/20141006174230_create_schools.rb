class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :beginningYear
      t.integer :endingYear

      t.timestamps
    end
  end
end
