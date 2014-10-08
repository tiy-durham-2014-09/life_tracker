class AddPersonIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :person_id, :integer
  end
end
