class AddCityStateCountryToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :city, :string
    add_column :schools, :state, :string
    add_column :schools, :country, :string
  end
end
