class CreateApplyActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :apply_activities do |t|

      t.timestamps
    end
  end
end
