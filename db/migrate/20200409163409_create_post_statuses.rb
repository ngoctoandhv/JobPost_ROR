class CreatePostStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :post_statuses do |t|
      t.string :post_status

      t.timestamps
    end
  end
end
