class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_name
      t.integer :beginning_date
      t.integer :ending_date
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
