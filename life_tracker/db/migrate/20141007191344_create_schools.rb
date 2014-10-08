class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.date :StartDate
      t.date :EndDate

      t.timestamps
    end
  end
end
