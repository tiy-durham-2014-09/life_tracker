class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :event
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
