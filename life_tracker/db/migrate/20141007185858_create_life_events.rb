class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :name
      t.integer :date
      t.references :person, index: true
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
