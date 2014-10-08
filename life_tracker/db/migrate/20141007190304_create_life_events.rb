class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :title
      t.date :date
      t.text :desc

      t.timestamps
    end
  end
end
