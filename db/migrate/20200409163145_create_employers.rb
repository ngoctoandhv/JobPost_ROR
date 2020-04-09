class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|
      t.string :company_logo
      t.string :company_name
      t.string :company_size
      t.string :company_description
      t.references :user

      t.timestamps
    end
  end
end
