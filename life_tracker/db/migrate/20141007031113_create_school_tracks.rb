class CreateSchoolTracks < ActiveRecord::Migration
  def change
    create_table :school_tracks do |t|
      t.string :school_name
      t.integer :year_school_began
      t.integer :year_school_ended

      t.timestamps
    end
  end
end
