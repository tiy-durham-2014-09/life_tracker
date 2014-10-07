class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :title
      t.string :year

      t.timestamps
    end
  end
end
