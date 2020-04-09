class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :candidate_name
      t.date :date_of_birth
      t.string :phone
      t.string :avatar
      t.string :cv

      t.timestamps
    end
  end
end
