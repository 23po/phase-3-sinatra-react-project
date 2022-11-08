class AddStackToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :stack, :string
  end
end
