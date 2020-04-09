class CreateApplyActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :apply_activities do |t|
      t.references :post_job
      t.references :candidate

      t.timestamps
    end
  end
end
