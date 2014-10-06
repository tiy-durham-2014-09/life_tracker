class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :title
      t.string :year
      t.text :description

      t.timestamps
    end
  end
end
