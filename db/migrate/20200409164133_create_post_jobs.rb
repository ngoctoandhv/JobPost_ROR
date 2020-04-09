class CreatePostJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :post_jobs do |t|
      t.integer :post_priority
      t.integer :salary_min
      t.integer :salary_max
      t.string :post_title
      t.string :job_description
      t.date :job_expried_date

      t.timestamps
    end
  end
end
