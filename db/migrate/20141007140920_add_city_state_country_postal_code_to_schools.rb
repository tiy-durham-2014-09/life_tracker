class AddCityStateCountryPostalCodeToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :city, :string
    add_column :schools, :state, :string
    add_column :schools, :country, :string
    add_column :schools, :postal_code, :string
  end
end
