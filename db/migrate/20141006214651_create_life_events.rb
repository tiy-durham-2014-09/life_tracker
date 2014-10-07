class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :title
      t.integer :year
      t.text :desc

      t.timestamps
    end
  end
end
