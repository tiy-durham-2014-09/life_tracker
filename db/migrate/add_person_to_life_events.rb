class AddPersonToLifeEvents < ActiveRecord::Migration
  def change
    add_reference :life_events, :person, index: true
  end
end
