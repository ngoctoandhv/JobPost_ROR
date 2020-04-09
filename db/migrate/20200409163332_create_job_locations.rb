class CreateJobLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :job_locations do |t|
      t.string :job_location

      t.timestamps
    end
  end
end
