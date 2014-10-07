class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :event_title
      t.integer :event_year
      t.text :event_description

      t.timestamps
    end
  end
end
