class CreatePrototypeImages < ActiveRecord::Migration
  def change
    create_table :prototype_images do |t|
      t.text :content
      t.integer :content_type, default: 0, null: false, limit: 1
      t.integer :prototype_id

      t.timestamps
    end
  end
end
