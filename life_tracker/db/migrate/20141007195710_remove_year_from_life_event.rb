class RemoveYearFromLifeEvent < ActiveRecord::Migration
  def change
    remove_column :life_events, :year
  end
end
