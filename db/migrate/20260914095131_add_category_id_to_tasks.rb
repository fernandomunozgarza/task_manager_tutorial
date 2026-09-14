class AddCategoryIdToTasks < ActiveRecord::Migration[8.1]
  def change
    #outdated
    #add_column(:tasks, :category_id, :integer, index: true)
    add_reference :tasks, :category, type: :integer, index: true, foreign_key: true
  end
end
