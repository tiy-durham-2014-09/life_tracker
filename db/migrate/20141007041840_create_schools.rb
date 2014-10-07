class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :title
      t.string :start_year
      t.string :end_year

      t.timestamps
    end
  end
end
