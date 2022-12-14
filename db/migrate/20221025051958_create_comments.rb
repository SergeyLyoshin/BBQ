class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :user_name
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end