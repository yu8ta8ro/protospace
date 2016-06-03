class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.text :catch_copy
      t.text :concept
      t.text :title
      t.integer :user_id
      t.timestamps
    end
  end
end
