class AddDateToLifeEvent < ActiveRecord::Migration
  def change
    add_column :life_events, :date, :date
  end
end
