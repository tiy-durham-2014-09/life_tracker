class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :beg_year
      t.integer :end_year

      t.timestamps
    end
  end
end
