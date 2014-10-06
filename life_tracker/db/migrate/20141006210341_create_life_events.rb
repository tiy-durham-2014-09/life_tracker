class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :event_desc
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
