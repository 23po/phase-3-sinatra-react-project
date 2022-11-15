class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :recruiter
      t.string :ifremote
      t.string :location
      t.integer :user_id
    end
  end
end
