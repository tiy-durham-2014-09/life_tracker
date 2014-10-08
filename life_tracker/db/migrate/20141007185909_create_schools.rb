class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :start_date
      t.integer :end_date
      t.references :person, index: true
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
