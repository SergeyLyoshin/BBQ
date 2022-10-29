class ChangeColumnOnTableName < ActiveRecord::Migration[6.1]
  def change
    # change_column :name_of_table, :name_of_column, :data_type_of_column, :null => true
    change_column_null :comments, :user_id, true
  end
end
