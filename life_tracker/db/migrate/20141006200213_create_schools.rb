class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_name
      t.integer :beginning_date
      t.integer :ending_date

      t.timestamps
    end
  end
end
